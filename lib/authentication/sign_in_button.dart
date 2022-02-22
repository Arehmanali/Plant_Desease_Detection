import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agricure/pages/user_page.dart';
import 'package:agricure/widgets/login_button.dart';

import 'auth_class.dart';

class SignInButton extends StatefulWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  _SignInButtonState createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Authentication.initializeFirebase(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Error initializing Firebase');
        } else if (snapshot.connectionState == ConnectionState.done) {
          return LoginButton(
              title: "Login",
              onTap: () async {
                setState(() {});

                User? user =
                    await Authentication.signInWithGoogle(context: context);

                setState(() {});

                if (user != null) {
                  Get.off(() => UserInfoScreen(user: user));
                }
              });
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
