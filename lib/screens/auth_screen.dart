import 'package:dorant/models/auth_data.dart';
import 'package:dorant/widgets/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var _isLoading = true;
  var _isInit = true;

  Future<void> checkSession(BuildContext context) async {
    await Provider.of<AuthData>(context).checkSession();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if (_isInit) {
      checkSession(context);
    }
    _isInit = false;
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          )
        : const LoginWidget();
  }
}
