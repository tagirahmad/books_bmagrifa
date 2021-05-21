import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({required this.child, this.preferredSizeHeight});
  final Widget child;
  final double? preferredSizeHeight;

  @override
  Size get preferredSize => Size.fromHeight(preferredSizeHeight ?? 70.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actionsIconTheme:
          const IconThemeData(size: 30.0, color: Colors.black, opacity: 10.0),
      title: Align(
        alignment: Alignment.centerLeft,
        child: child,
      ),
    );
  }
}
