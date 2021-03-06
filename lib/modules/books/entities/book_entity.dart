import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class BookEntity extends Equatable {
  const BookEntity(
      {@required this.title,
      @required this.description,
      @required this.author,
      @required this.coverImage});

  final String title;
  final String description;
  final String author;
  final String coverImage;

  static BookEntity fromSnapshot(DocumentSnapshot snap) {
    return BookEntity(
        title: snap.data()['title'] as String,
        description: snap.data()['description'] as String,
        coverImage: snap.data()['coverImage'] as String,
        author: snap.data()['author'] as String);
  }

  @override
  List<Object> get props => <Object>[title, description, author, coverImage];
}
