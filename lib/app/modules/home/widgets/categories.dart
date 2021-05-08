// Flutter imports:
import 'package:bmagrifa_books/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:

class Categories extends StatelessWidget {
  final HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: <Widget>[
        InkWell(
          onTap: () {
            homeController.hamburgerIsActive.toggle();
          },
          child: const ListTile(
            title: Text('Все книги'),
            trailing: Text('100 книг'),
          ),
        ),
        InkWell(
          onTap: () {
            homeController.hamburgerIsActive.toggle();
          },
          child: const ListTile(
            title: Text('Манхадж'),
            trailing: Text('12 книг'),
          ),
        ),
        InkWell(
          onTap: () {
            homeController.hamburgerIsActive.toggle();
          },
          child: const ListTile(
            title: Text('Акыда'),
            trailing: Text('11 книг'),
          ),
        ),
        InkWell(
          onTap: () {
            homeController.hamburgerIsActive.toggle();
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
