import 'package:dorant/widgets/menu_grid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("หน้าหลัก"),
      ),
      body: const MenuGrid(),
    );
  }
}
