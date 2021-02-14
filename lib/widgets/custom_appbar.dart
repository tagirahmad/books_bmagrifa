import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actionsIconTheme:
          IconThemeData(size: 30.0, color: Colors.black, opacity: 10.0),
      actions: [IconButton(icon: Icon(Icons.menu), onPressed: () {})],
      title: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Библиотека',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Text(
                'Выберите книгу для чтения',
                style: TextStyle(fontSize: 15, color: Colors.black),
              )
            ],
          )),
    );
  }
}
