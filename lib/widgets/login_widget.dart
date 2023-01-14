import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:provider/provider.dart';

import '../models/auth_data.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  Future<String?> _onRecoverPassword(BuildContext context, String data) async {
    print(data);
    // TODO: implement _onRecoverPassword
    return null;
  }

  String? _checkName(String? data) {
    if (data == null || data.isEmpty) {
      return 'กรุณาใส่ชื่อ';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Dorant (ดูร้าน)',
      additionalSignupFields: [
        UserFormField(
            keyName: 'name',
            displayName: 'ชื่อ',
            fieldValidator: (String? data) {
              return _checkName(data);
            }),
      ],
      onLogin: (LoginData data) =>
          Provider.of<AuthData>(context, listen: false).login(data),
      onRecoverPassword: (String data) => _onRecoverPassword(context, data),
      onSignup: (SignupData data) =>
          Provider.of<AuthData>(context, listen: false).signUp(data),
      onConfirmSignup: (String confirmStr, LoginData data) =>
          Provider.of<AuthData>(context, listen: false)
              .signUpConfirm(confirmStr, data),
      loginAfterSignUp: true,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacementNamed('/');
      },
    );
  }
}
