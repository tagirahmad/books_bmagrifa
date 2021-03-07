// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:bmagrifa_books/modules/books/screens/book_info.dart';
import 'package:bmagrifa_books/modules/books/screens/startup_page.dart';

final List<GetPage> books_routes = <GetPage>[
  GetPage(name: '/', page: () => StartupPage()),
  GetPage(name: '/book_info', page: () => BookInfo())
];
