// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:bmagrifa_books/modules/books/controllers/hamburger_controller.dart';

class Categories extends StatelessWidget {
  final HamburgerController hamburgerController =
      Get.find<HamburgerController>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        InkWell(
          onTap: () {
            hamburgerController.toggle();
          },
          child: const ListTile(
            title: Text('Все книги'),
            trailing: Text('100 книг'),
          ),
        ),
        InkWell(
          onTap: () {
            hamburgerController.toggle();
          },
          child: const ListTile(
            title: Text('Манхадж'),
            trailing: Text('12 книг'),
          ),
        ),
        InkWell(
          onTap: () {
            hamburgerController.toggle();
          },
          child: const ListTile(
            title: Text('Акыда'),
            trailing: Text('11 книг'),
          ),
        ),
        InkWell(
          onTap: () {
            hamburgerController.toggle();
          },
          child: const ListTile(
            title: Text('Медицина'),
            trailing: Text('5 книг'),
          ),
        ),
      ],
    );
  }
}
