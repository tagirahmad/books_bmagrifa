import 'package:bmagrifa_books/app/common_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends CustomAppBar {
  HomeAppBar()
      : super(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Библиотека',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Text(
                'Выберите книгу для чтения',
                style: TextStyle(fontSize: 15, color: Colors.black),
              )
            ],
          ),
        );
}
