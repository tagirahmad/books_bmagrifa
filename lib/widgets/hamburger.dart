// Flutter imports:
import 'package:flutter/material.dart';

class Hamburger extends StatelessWidget {
  const Hamburger(
      {@required this.bgColor, @required this.iconColor, @required this.icon});

  final Color bgColor;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: bgColor, borderRadius: BorderRadius.circular(10.0)),
        child: Icon(
          icon,
          color: iconColor,
          size: 30.0,
        ));
  }
}
