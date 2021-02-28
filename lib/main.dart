import 'package:bmagrifa_books/modules/books/screens/book_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'modules/books/screens/startup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.blue,
          // accentColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: const TextTheme()),
      getPages: <GetPage>[
        GetPage(name: '/', page: () => StartupPage()),
        GetPage(name: '/book_info', page: () => BookInfo())
      ],
      home: StartupPage(),
    );
  }
}
