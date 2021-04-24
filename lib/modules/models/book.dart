// Package imports:
import 'package:meta/meta.dart';

// Project imports:
import 'package:bmagrifa_books/modules/entities/book_entity.dart';
import 'package:bmagrifa_books/modules/models/author.dart';

@immutable
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

  static Book fromEntity(BookEntity entity) {
    return Book(
        title: entity.title ?? 'Book title',
        description: entity.description ?? 'Book description',
        coverImage: entity.coverImage ?? 'https://socialistmodernism.com/wp-content/uploads/2017/07/placeholder-image.png',
        author:
            Author(name: entity.author) ?? const Author(name: 'Author name'));
  }
}
