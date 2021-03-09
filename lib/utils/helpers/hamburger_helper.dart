// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:bmagrifa_books/widgets/hamburger.dart';

class HamburgerHelper {
  static Widget toggle(bool isActive) {
    if (!isActive) {
      return const Hamburger(
        bgColor: Color(0xFFEFEFEF),
        icon: Icons.menu,
        iconColor: Colors.black,
      );
    } else {
      return const Hamburger(
        bgColor: Color(0xFFFF7026),
        icon: Icons.close,
        iconColor: Colors.white,
      );
    }
  }
}
