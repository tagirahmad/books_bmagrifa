import 'package:bmagrifa_books/widgets/hamburger.dart';
import 'package:flutter/material.dart';

class HamburgerHelper {
  static Widget toggle(bool isActive) {
    if (!isActive) {
      return Hamburger(
        bgColor: Color(0xFFEFEFEF),
        icon: Icons.menu,
        iconColor: Colors.black,
      );
    } else {
      return Hamburger(
        bgColor: Color(0xFFFF7026),
        icon: Icons.close,
        iconColor: Colors.white,
      );
    }
  }
}
