import 'package:bmagrifa_books/modules/books/models/author.dart';
import 'package:meta/meta.dart';

class Book {
  const Book(
      {@required this.title,
      @required this.description,
      @required this.author,
      @required this.coverImage});

  final String title;
  final String description;
  final Author author;
  final String coverImage;
}
