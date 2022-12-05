import 'package:dorant/screens/new_order_screen.dart';
import 'package:dorant/widgets/icon_text_button.dart';
import 'package:flutter/material.dart';

class OrderSubScreenNew extends StatelessWidget {
  const OrderSubScreenNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: IconTextButton(
      onPressed: () {
        Navigator.of(context).pushNamed(NewOrderScreen.routeName);
      },
      label: "สร้างออเดอร์ใหม่",
      iconData: Icons.add_circle_outline,
    ));
  }
}
