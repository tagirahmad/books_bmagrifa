// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:bmagrifa_books/modules/books/controllers/books_controller.dart';
import 'package:bmagrifa_books/modules/books/controllers/hamburger_controller.dart';
import 'package:bmagrifa_books/modules/books/models/book.dart';
import 'package:bmagrifa_books/widgets/book_card.dart';
import 'package:bmagrifa_books/widgets/categories.dart';

class BooksOrCategoriesHelper {
  static Widget showBooksOrCategories(HamburgerController h) {
    if (!h.isActive) {
      return GetX<BooksController>(
          init: Get.put<BooksController>(BooksController()),
          builder: (BooksController b) {
            if (b != null && b.books.isNotEmpty) {
              return GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  children: b.books.map((Book book) {
                    return BookCard(
                        title: book.title,
                        coverImage: book.coverImage,
                        onTap: () {
                          Get.toNamed<dynamic>('/book_info',
                              arguments: Book(
                                description: book.description,
                                title: book.title,
                                author: book.author,
                                coverImage: book.coverImage,
                              ));
                        });
                  }).toList());
            } else {
              return const CircularProgressIndicator();
            }
          });
    } else
      return Categories();
  }
}
