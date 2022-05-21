import 'package:agri_cure/Helpers/SizeConfig.dart';
import 'package:agri_cure/Helpers/TextSizes.dart';
import 'package:agri_cure/Theme/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  bool requesting = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryScreenBg,
      body: SafeArea(
        child: requesting?Center(
          child: CircularProgressIndicator(),
        ): Stack(
          children: [
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 4,
                  ),
                  Container(
                    child: Text(
                      "Forget Password",
                      style:
                      TextSizes.primaryColor14pxw700.copyWith(fontSize: 32),
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.safeBlockHorizontal*6),
                    child: Text("Please enter your email address to recover you password..!",
                      textAlign: TextAlign.center,
                      style: TextSizes.black12pxw500,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical*2,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          height: 55,
                          width: SizeConfig.screenWidth,
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(7)),
                          margin: EdgeInsets.symmetric(
                              horizontal: SizeConfig.safeBlockHorizontal * 7),
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.safeBlockHorizontal * 3),
                          alignment: Alignment.center,
                          child: TextFormField(
                            controller: _emailController,
                            cursorWidth: 1,
                            validator: (input) {
                              if (input == null || input == "") {
                                return "Email is empty";
                              } else if (!input.contains("@")) {
                                return "Email is invalid";
                              } else {
                                return null;
                              }
                            },
                            cursorColor: Colors.black,
                            style: TextSizes.black14pxw500,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: "Email"),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 5,
                  ),
                  Container(
                    width: SizeConfig.screenWidth * 0.50,
                    height: 48,
                    child: ElevatedButton(
                        onPressed:()=> resetPasswordTapped(_emailController.text),
                        style: ElevatedButton.styleFrom(primary: primaryColor),
                        child: Text(
                          "Reset password",
                          style: TextSizes.black14pxw500
                              .copyWith(color: Colors.white),
                        )),
                  ),
                  Spacer(
                    flex: 1,
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> resetPasswordTapped(String email) async {
    if (_formKey.currentState!.validate()){
      try{
        setState(() {
          requesting = true;
        });
        await  _firebaseAuth.sendPasswordResetEmail(email: email);

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(""
            "Password reset email sent",style: TextSizes.black12pxw600.copyWith(
          color: Colors.white
        ),)));

        setState(() {
          requesting = false;
        });
        Navigator.pop(context);

      } on FirebaseAuthException catch(e){
        setState(() {
          requesting = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
        e.message.toString(),style: TextSizes.black12pxw600.copyWith(
            color: Colors.white
        ),)));
      }

    }
  }
}
