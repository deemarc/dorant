import 'package:flutter/material.dart';

class NewOrderScreen extends StatelessWidget {
  static const routeName = "new-order";
  const NewOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("สร้างออเดอร์ใหม่"),),);
  }
}
