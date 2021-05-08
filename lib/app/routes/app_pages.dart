import 'package:get/get.dart';

import 'package:bmagrifa_books/app/modules/book_info/bindings/book_info_binding.dart';
import 'package:bmagrifa_books/app/modules/book_info/views/book_info_view.dart';
import 'package:bmagrifa_books/app/modules/home/bindings/home_binding.dart';
import 'package:bmagrifa_books/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOOK_INFO,
      page: () => BookInfoView(),
      binding: BookInfoBinding(),
    ),
  ];
}
