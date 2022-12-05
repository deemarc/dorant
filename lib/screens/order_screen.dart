import 'package:dorant/screens/order_screens/order_sub_screen_new.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {

  static const routeName = "/order";

  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ออเดอร์"),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.fiber_new), text:"ใหม่",),
            Tab(icon: Icon(Icons.av_timer), text:"รอส่ง",),
            Tab(icon: Icon(Icons.check_circle), text:"ส่งแล้ว",),

          ]),
        ),
        body: const TabBarView(children: [
          OrderSubScreenNew(),
          Center(child: Text("data1"),),
          Center(child: Text("data2"),)
        ]),
      ),
    );
  }
}
