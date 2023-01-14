import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:dorant/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dorant/models/auth_data.dart';
import 'package:dorant/screens/home_screen.dart';
import 'package:dorant/screens/new_order_screen.dart';
import 'package:dorant/screens/order_screen.dart';

import 'amplifyconfiguration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _isAmplifyConfigured = false;

  @override
  void initState() {
    super.initState();
    if (_isAmplifyConfigured == false) {
      _configureAmplify();
    }
  }

  Future<void> _configureAmplify() async {
    try {
      final auth = AmplifyAuthCognito();
      await Amplify.addPlugin(auth);

      // call Amplify.configure to use the initialized categories in your app
      await Amplify.configure(amplifyconfig);
    } on Exception catch (e) {
      safePrint('An error occurred configuring Amplify: $e');
    }
    setState(() {
      _isAmplifyConfigured = true;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AuthData()),
      ],
      child: Consumer<AuthData>(
          builder: (ctx, authData, _) => MaterialApp(
                title: 'Flutter Demo',
                theme: ThemeData(
                  // This is the theme of your application.
                  //
                  // Try running your application with "flutter run". You'll see the
                  // application has a blue toolbar. Then, without quitting the app, try
                  // changing the primarySwatch below to Colors.green and then invoke
                  // "hot reload" (press "r" in the console where you ran "flutter run",
                  // or simply save your changes to "hot reload" in a Flutter IDE).
                  // Notice that the counter didn't reset back to zero; the application
                  // is not restarted.
                  primarySwatch: Colors.blue,
                ),
                home: _isAmplifyConfigured
                    ? authData.isLogin
                        ? const HomeScreen()
                        : const AuthScreen()
                    : const Scaffold(
                        body: Center(
                        child: CircularProgressIndicator(),
                      )),
                routes: {
                  OrderScreen.routeName: (ctx) => const OrderScreen(),
                  NewOrderScreen.routeName: (ctx) => const NewOrderScreen(),
                },
              )),
    );
  }
}
