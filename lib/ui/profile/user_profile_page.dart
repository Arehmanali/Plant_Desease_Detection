import 'package:agricure/app_theme.dart';
import 'package:agricure/bloc/authentication/authentication.dart';
import 'package:agricure/ui/profile/avatar.dart';
import 'package:agricure/ui/profile/user_info_field.dart';
import 'package:agricure/ui/widgets/tab_page.dart';
import 'package:agricure/utils/message_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfilePage extends TabPage {
  const UserProfilePage({Key? key, required String pageTitle})
      : super(pageTitle: pageTitle);

  @override
  _UserProfilePagePageState createState() => _UserProfilePagePageState();
}

class _UserProfilePagePageState extends TabPageState<UserProfilePage> {
  @override
  void initState() {
    tabListView.add(const Avatar(
      photo: '',
    ));
    tabListView.add(const UserInfoField(
      name: 'Name',
      icon: Icons.account_circle,
      field: 'displayName',
    ));
    tabListView.add(const UserInfoField(
      name: 'Email',
      icon: Icons.email,
      field: 'email',
    ));
    tabListView.add(_LogOutButton());
    super.initState();
  }
}

class _LogOutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: SizedBox(
          height: 45,
          width: 200,
          child: RaisedButton(
            child: const Text(
              'LOG OUT',
              style: AppTheme.bodyText1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: const Color(0xFFFFD600),
            onPressed: () async {
              await context.read<MessageHandler>().deleteToken();
              context
                  .read<AuthenticationBloc>()
                  .add(AuthenticationLogoutRequested());
            },
          ),
        ),
      ),
    );
  }
}
