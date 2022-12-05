import 'package:dorant/screens/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuButton extends StatelessWidget {
  final IconData menuIcon;
  final String menuText;
  final String routeName;
  const MenuButton(
      {Key? key,
      required this.menuIcon,
      required this.menuText,
      required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(routeName);
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(menuIcon),
              const SizedBox(
                height: 10.0,
              ),
              Text(menuText)
            ],
          )),
    );
  }
}

class MenuGrid extends StatelessWidget {
  const MenuGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(8.0),
      crossAxisCount: 2,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: const MenuButton(
            menuIcon: Icons.border_color_outlined,
            menuText: "ออเดอร์",
            routeName: OrderScreen.routeName,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const MenuButton(
            menuIcon: Icons.restaurant_menu_outlined,
            menuText: "เมนูอาหาร",
            routeName: "/",
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const MenuButton(
            menuIcon: Icons.warehouse_outlined,
            menuText: "คลังสินค้า",
            routeName: "/",
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const MenuButton(
            menuIcon: FontAwesomeIcons.userGroup,
            menuText: "รายชื่อพนักงาน",
            routeName: "/",
          ),
        ),
        Container(
            padding: const EdgeInsets.all(8),
            child: const MenuButton(
              menuIcon: FontAwesomeIcons.cartFlatbedSuitcase,
              menuText: "วางแผนจ่ายตลาด",
              routeName: "/",
            )),
      ],
    );
  }
}
