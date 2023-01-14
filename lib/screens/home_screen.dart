import 'package:dorant/models/auth_data.dart';
import 'package:dorant/widgets/login_widget.dart';
import 'package:dorant/widgets/menu_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("หน้าหลัก"),
        ),
        body: Column(children: [
          Consumer<AuthData>(
              builder: (context, value, child) => Container(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
                  alignment: Alignment.centerLeft,
                  child: Text("สวัสดี ${value.name}"))),
          const Expanded(child: MenuGrid())
        ]));
  }
}
