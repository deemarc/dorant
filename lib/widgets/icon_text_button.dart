import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData iconData;
  final String label;

  const IconTextButton(
      {Key? key, this.onPressed, required this.iconData, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      color: Colors.grey.shade200,
      child: TextButton(
          onPressed: onPressed,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconData, size: 30,),
              const SizedBox(
                height: 10.0,
              ),
              Text(label)
            ],
          )),
    );
  }
}
