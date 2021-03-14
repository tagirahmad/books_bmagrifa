// Package imports:
import 'package:bmagrifa_books/modules/books/entities/book_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

// Project imports:
import 'package:bmagrifa_books/modules/books/models/book.dart';
import 'package:bmagrifa_books/utils/services/firebase_api_service.dart';

class BooksController extends GetxController with StateMixin<List<Book>> {
  final FirebaseApiService _firebaseApiService = FirebaseApiService();
  final RxList<Book> _books = <Book>[].obs;

  List<Book> get books => _books;

  void getBooks() {
    // _books.bindStream(firebaseApiService.getBooks());

    //
    change(null, status: RxStatus.loading());

    // final Stream<List<Book>> books =
    //     _firebaseApiService.getBooks().handleError((Object e) {
    //   print(e);
    //   change(null, status: RxStatus.error(e.toString()));
    // });

    _books.bindStream(_firebaseApiService.getBooks().handleError((Object e) {
      print(e);
      change(null, status: RxStatus.error(e.toString()));
    }));

    change(_books, status: RxStatus.success());

    // if (_books.isNotEmpty) {
    //   change(_books, status: RxStatus.empty());
    // }
    //

    // if (_books.toList().isNotEmpty) {
    //   change(_books, status: RxStatus.success());
    // } else if (_books.toList().isEmpty) {
    //   change(null, status: RxStatus.empty());
    // }

    

    // _books.bindStream(books);

    // _books.assignAll(_books);

    // if (_books.isNotEmpty) {
    //   change(_books, status: RxStatus.success());
    // } else if (_books.isEmpty) {
    //   change(_books, status: RxStatus.empty());
    // }
    // change(_books, status: RxStatus.success());
    // Stream<List<Book>> books = firebaseApiService.getBooks();
    // if (books != null && books.) {
    //   _books.assignAll(books);
    // }

    // try {
    //   change(null, status: RxStatus.loading());
    //   final Stream<List<Book>> streamOfbooks =
    //       firebaseApiService.getBooks().handleError((Object e) {
    //     print(e);
    //     change(null, status: RxStatus.error(e.toString()));
    //   });
    //   _books.bindStream(streamOfbooks);
    //   RxStatus.success();
    // } catch (e) {
    //   RxStatus.error(e.toString());
    //   Get.snackbar<dynamic>('Ошибка', e.toString());
    // }

    // firebaseApiService.getBooks().then((QuerySnapshot snapshot) {
    //   change(null, status: RxStatus.loading());
    //   final List<Book> retrievedBooks = snapshot.docs
    //       .map((QueryDocumentSnapshot doc) =>
    //           Book.fromEntity(BookEntity.fromSnapshot(doc)))
    //       .toList();
    //   _books.assignAll(retrievedBooks);
    //   change(_books, status: RxStatus.success());
    // }).onError((dynamic error, StackTrace stackTrace) {
    //   print(error.toString());
    //   change(null, status: RxStatus.error(error.toString()));
    // Get.snackbar<dynamic>('Ошибка', error.toString());
    // });
  }

  @override
  void onInit() {
    // Experimental
    // ever(_books, _checkStatus);
    //
    getBooks();
    // _books.assignAll(_books);
    super.onInit();
  }

  // // Esxperimental
  // void _checkStatus(List<Book> value) {
  //   if (value.isNotEmpty) {
  //     RxStatus.success();
  //   } else if (value.isEmpty) {
  //     RxStatus.loading();
  //   }
  // }
  //
}
