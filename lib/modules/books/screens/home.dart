// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:bmagrifa_books/modules/books/controllers/books_controller.dart';
import 'package:bmagrifa_books/modules/books/controllers/hamburger_controller.dart';
import 'package:bmagrifa_books/utils/helpers/books_or_categories_helper.dart';
import 'package:bmagrifa_books/widgets/custom_appbar.dart';
import 'package:bmagrifa_books/widgets/search_bar.dart';

class Home extends StatelessWidget {
  final BooksController booksController = Get.put(BooksController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(),
        // body: SafeArea(
        // child: SingleChildScrollView(
        //   padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        //   child: GetBuilder<HamburgerController>(
        //     init: HamburgerController(),
        //     builder: (HamburgerController s) => Column(
        //       children: <Widget>[
        //         SearchBar(),
        //         const SizedBox(
        //           height: 20,
        //         ),
        //         if (!s.isActive)
        //           // booksController.obx(
        //           //   (List<Book> books) {
        //           //     return GridView.count(
        //           //         shrinkWrap: true,
        //           //         physics: const NeverScrollableScrollPhysics(),
        //           //         crossAxisCount: 2,
        //           //         children: books.map((Book book) {
        //           //           return BookCard(
        //           //               title: book.title,
        //           //               coverImage: book.coverImage,
        //           //               onTap: () {
        //           //                 Get.toNamed<dynamic>('/book_info',
        //           //                     arguments: Book(
        //           //                       description: book.description,
        //           //                       title: book.title,
        //           //                       author: book.author,
        //           //                       coverImage: book.coverImage,
        //           //                     ));
        //           //               });
        //           //         }).toList());
        //           //   },
        //           //   onLoading: const CircularProgressIndicator(),
        //           // )
        //         GetX<BooksController>(
        //             init: Get.put<BooksController>(BooksController()),
        //             builder: (BooksController b) {
        //               if (b != null && b.books.isNotEmpty) {
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
        //               } else {
        //                 return const CircularProgressIndicator();
        //               }
        //             })

        //         // StreamBuilder<QuerySnapshot>(
        //         //     stream: FirebaseFirestore.instance
        //         //         .collection('books')
        //         //         .snapshots(),
        //         //     builder: (BuildContext context,
        //         //         AsyncSnapshot<QuerySnapshot> snapshot) {
        //         //       if (snapshot.hasError) {
        //         //         return const Text('Something went wrong');
        //         //       }
        //         //
        //         //       if (snapshot.connectionState ==
        //         //           ConnectionState.waiting) {
        //         //         return const Text('Загрузка книг...');
        //         //       }
        //         //
        //         //       return GridView.count(
        //         //           shrinkWrap: true,
        //         //           physics: const NeverScrollableScrollPhysics(),
        //         //           crossAxisCount: 2,
        //         //           children: snapshot.data.docs
        //         //               .map((DocumentSnapshot document) {
        //         //             return BookCard(
        //         //                 title: document.data()['author'] as String,
        //         //                 coverImage:
        //         //                     document.data()['coverImage'] as String,
        //         //                 onTap: () {
        //         //                   Get.toNamed<dynamic>('/book_info',
        //         //                       arguments: Book(
        //         //                         description: document
        //         //                             .data()['description'] as String,
        //         //                         title: document.data()['title']
        //         //                             as String,
        //         //                         author: Author(
        //         //                             name: document.data()['author']
        //         //                                 as String),
        //         //                         coverImage: document
        //         //                             .data()['coverImage'] as String,
        //         //                       ));
        //         //                 });
        //         //           }).toList());
        //         //     })
        //         else
        //           Categories()
        //       ],
        //     ),
        //     ),
        //   ),
        // ),
        body: GetBuilder<HamburgerController>(
          init: HamburgerController(),
          builder: (HamburgerController h) => CustomScrollView(
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
                      child: BooksOrCategoriesHelper.showBooksOrCategories(h)))
            ],
          ),
        ));
  }
}
