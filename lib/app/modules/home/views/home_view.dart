import 'package:bmagrifa_books/app/data/firebase_api.dart';
import 'package:bmagrifa_books/app/models/books_model.dart';
import 'package:bmagrifa_books/app/modules/book_info/controllers/book_info_controller.dart';
import 'package:bmagrifa_books/app/modules/home/widgets/book_card.dart';
import 'package:bmagrifa_books/app/modules/home/widgets/categories.dart';
import 'package:bmagrifa_books/app/modules/home/widgets/home_app_bar.dart';
import 'package:bmagrifa_books/app/modules/home/widgets/search_bar.dart';
import 'package:bmagrifa_books/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: GestureDetector(
        onTap: controller.searchFocusNode.unfocus,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              snap: true,
              floating: true,
              flexibleSpace: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SearchBar(),
              ),
              backgroundColor: Colors.white,
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 16.0),
                child: Obx(() => showBooksOrCategories(controller)),
              ),
            )
          ],
        ),
      ),
    );
  }

  static Widget showBooksOrCategories(HomeController h) {
    if (!h.hamburgerIsActive.value) {
      final BookInfoController _booksController = Get.put<BookInfoController>(
        BookInfoController(
          api: FirebaseApi(),
        ),
      );
      return _booksController.obx(
        (List<Book>? books) {
          return GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: books!.map(
              (Book book) {
                return BookCard(
                  title: book.title,
                  coverImage: book.coverImage,
                  onTap: () {
                    h.searchFocusNode.unfocus();
                    Get.toNamed<dynamic>(
                      Routes.BOOK_INFO,
                      arguments: Book(
                        description: book.description,
                        title: book.title,
                        author: book.author,
                        coverImage: book.coverImage,
                        categories: book.categories,
                        hidden: book.hidden,
                        isNew: book.isNew,
                        url: book.url,
                        version: book.version,
                      ),
                    );
                  },
                );
              },
            ).toList(),
          );
        },
        onEmpty: const Center(
          child: Text('Книг пока нет'),
        ),
        onError: (String? error) => Center(
          child: Text(error ?? 'Ошибка'),
        ),
        onLoading: const Center(
          child: Text('Идет загрузка книг'),
        ),
      );

      // return GetX<BooksController>(
      //     init: Get.put<BooksController>(BooksController()),
      //     builder: (BooksController b) {
      //       if (b != null && b.books.isNotEmpty) {
      //         return GridView.count(
      //             shrinkWrap: true,
      //             physics: const NeverScrollableScrollPhysics(),
      //             crossAxisCount: 2,
      //             children: b.books.map((Book book) {
      //               return BookCard(
      //                   title: book.title,
      //                   coverImage: book.coverImage,
      //                   onTap: () {
      //                     Get.toNamed<dynamic>('/book_info',
      //                         arguments: Book(
      //                           description: book.description,
      //                           title: book.title,
      //                           author: book.author,
      //                           coverImage: book.coverImage,
      //                         ));
      //                   });
      //             }).toList());
      //       } else {
      //         return const Center(child: CircularProgressIndicator());
      //       }
      //     });

    } else
      return Categories();
  }
}
