import 'package:bmagrifa_books/modules/books/screens/book_info.dart';
import 'package:bmagrifa_books/modules/books/screens/startup_page.dart';
import 'package:get/get.dart';

final List<GetPage> books_routes = <GetPage>[
  GetPage(name: '/', page: () => StartupPage()),
  GetPage(name: '/book_info', page: () => BookInfo())
];
