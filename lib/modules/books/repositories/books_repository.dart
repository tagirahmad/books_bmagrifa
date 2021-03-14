// Project imports:
import 'package:bmagrifa_books/modules/books/models/book.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class BooksRepository {
  Stream<List<Book>> getBooks();
  // Future<QuerySnapshot> getBooks();
}
