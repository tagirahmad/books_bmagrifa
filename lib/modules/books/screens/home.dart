import 'package:bmagrifa_books/modules/books/models/author.dart';
import 'package:bmagrifa_books/modules/books/models/book.dart';
import 'package:bmagrifa_books/modules/books/screens/book_info.dart';
import 'package:bmagrifa_books/widgets/custom_appbar.dart';
import 'package:bmagrifa_books/widgets/book_card.dart';
import 'package:bmagrifa_books/widgets/search.dart';
import 'package:flutter/material.dart';

List<Book> books = [
  Book(
      title: "Толкование прекрасных имен Аллаха",
      description: "Long description of the book 1",
      author: Author(name: "Ibn Kathir", id: 1),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Религиозные новшества",
      description: "Long description of the book 2",
      author: Author(name: "Ibn Kudama", id: 2),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Обряды похорон",
      description: "Long description of the book 3 ",
      author: Author(name: "Al Albani", id: 3),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Уроки, извлекаемые из Корана",
      description: "Long description of the book 4",
      author: Author(name: "", id: 4),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 5 title",
      description: "Long description of the book 5",
      author: Author(name: "Ibn Kathir", id: 5),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 6 title",
      description: "Long description of the book 6",
      author: Author(name: "Ibn Kathir", id: 6),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 7 title",
      description: "Long description of the book 7",
      author: Author(name: "Ibn Kathir", id: 7),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 8 title1 long long long long long long long long long",
      description: "Long description of the book 8",
      author: Author(name: "Ibn Kathir", id: 8),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 9 title1 long long long long long long long long long",
      description: "Long description of the book 9",
      author: Author(name: "Ibn Kathir", id: 9),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 6 title",
      description: "Long description of the book 6",
      author: Author(name: "Ibn Kathir", id: 6),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 7 title",
      description: "Long description of the book 7",
      author: Author(name: "Ibn Kathir", id: 7),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 7 title",
      description: "Long description of the book 7",
      author: Author(name: "Ibn Kathir", id: 7),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 7 title",
      description: "Long description of the book 7",
      author: Author(name: "Ibn Kathir", id: 7),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 7 title",
      description: "Long description of the book 7",
      author: Author(name: "Ibn Kathir", id: 7),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 7 title",
      description: "Long description of the book 7",
      author: Author(name: "Ibn Kathir", id: 7),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 7 title",
      description: "Long description of the book 7",
      author: Author(name: "Ibn Kathir", id: 7),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 7 title",
      description: "Long description of the book 7",
      author: Author(name: "Ibn Kathir", id: 7),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
  Book(
      title: "Book 7 title",
      description: "Long description of the book 7",
      author: Author(name: "Ibn Kathir", id: 7),
      coverImage:
          'https://rukitab.com/wa-data/public/shop/products/59/00/59/images/67/67.200.png'),
];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: Column(
          children: [
            Search(),
            SizedBox(
              height: 20,
            ),
            GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                children: books.map((Book book) {
                  return BookCard(
                      title: book.title,
                      coverImage: book.coverImage,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => BookInfo()));
                      });
                }).toList()),
          ],
        ),
      ),
    );
  }
}
