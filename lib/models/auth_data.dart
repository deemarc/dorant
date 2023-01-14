import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter_login/flutter_login.dart';

import '../amplifyconfiguration.dart';

class AuthData with ChangeNotifier {
  bool _isLogin = false;
  String? _username;
  String? _email;
  String? _name;

  Future<void> checkSession() async {
    _isLogin = await fetchSession();
    if (_isLogin) {
      await fetchCurrentUserAttributes();
    }
    notifyListeners();
  }

  bool get isLogin {
    return _isLogin;
  }

  String get name {
    return _name ?? "";
  }

  Future<bool> fetchSession() async {
    try {
      AuthSession session = await Amplify.Auth.fetchAuthSession(
        options: CognitoSessionOptions(getAWSCredentials: true),
      );
      return session.isSignedIn;
    } on AuthException catch (e) {
      print(e);
    }
    return false;
  }

  Future<void> fetchCurrentUserAttributes() async {
    try {
      final result = await Amplify.Auth.fetchUserAttributes();
      for (final element in result) {
        // print('key: ${element.userAttributeKey}; value: ${element.value}');
        if (element.userAttributeKey.key == 'name') {
          _name = element.value;
        } else if (element.userAttributeKey.key == 'email') {
          _email = element.value;
        }
      }
    } on AuthException catch (e) {
      print(e.message);
    }
  }

  Future<String?> signUp(SignupData data) async {
    try {
      await Amplify.Auth.signUp(
        username: data.name!,
        password: data.password!,
        options: CognitoSignUpOptions(userAttributes: {
          CognitoUserAttributeKey.email: data.name!,
          CognitoUserAttributeKey.name: data.additionalSignupData!['name'] ?? ''
        }),
      );
    } on AuthException catch (e) {
      // e.runtimeType == AuthException.
      if (e.runtimeType == UsernameExistsException) {
        return "มีผู้ใช้งานอีเมลล์นี้แล้ว";
      }
      // if (e.runtimeType Pass)
      return e.message;
    }
    return null;
  }

  Future<String?> signUpConfirm(String confirmStr, LoginData data) async {
    try {
      final res = await Amplify.Auth.confirmSignUp(
          username: data.name, confirmationCode: confirmStr);

      if (res.isSignUpComplete) {
        return await login(data);
      }
    } on AuthException catch (e) {
      // TODO: add error handling
      return e.message;
    }

    return null;
  }

  Future<String?> login(LoginData data) async {
    try {
      final res = await Amplify.Auth.signIn(
          username: data.name, password: data.password);
      _isLogin = res.isSignedIn;
      notifyListeners();
    } on AuthException catch (e) {
      return e.message;
    }
    return null;
  }
}
