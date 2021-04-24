// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

class BookInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Text(Get.arguments.title as String),
          Text(Get.arguments.description as String),
          Text(Get.arguments.coverImage as String)
        ],
      )),
    );
  }
}
