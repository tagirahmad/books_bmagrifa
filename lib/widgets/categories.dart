import 'package:bmagrifa_books/utils/controllers/hamburger_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  final HamburgerController hamburgerController =
      Get.put(HamburgerController());

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
