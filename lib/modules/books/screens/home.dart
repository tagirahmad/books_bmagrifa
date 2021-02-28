import 'package:bmagrifa_books/modules/books/models/author.dart';
import 'package:bmagrifa_books/modules/books/models/book.dart';
import 'package:bmagrifa_books/modules/books/screens/book_info.dart';
import 'package:bmagrifa_books/widgets/custom_appbar.dart';
import 'package:bmagrifa_books/widgets/book_card.dart';
import 'package:bmagrifa_books/widgets/search_bar.dart';
import 'package:flutter/material.dart';

List<Book> books = [
  Book(
      title: "Толкование прекрасных имен Аллаха",
      description: "Long description of the book 1",
      author: Author(name: "Ibn Kathir", id: 1),
      coverImage:
          'https://static.vecteezy.com/system/resources/previews/001/200/145/original/books-png.png'),
  Book(
      title: "Религиозные новшества",
      description: "Long description of the book 2",
      author: Author(name: "Ibn Kudama", id: 2),
      coverImage:
          'https://images.squarespace-cdn.com/content/v1/54d262dde4b02fc9b49ecf9c/1522975869432-RRNG4FPX0LCJD205NT88/ke17ZwdGBToddI8pDm48kEuv4Y4t3q1rAAZ3bBSUazl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1US9-0cW5aPUUMJ-3sw1AVU3jPrGIyYMQT1mVx6iI98dTG6v6ULRah83RgHXAWD5lbQ/Atthegoingdownofthesun_mockup.png'),
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
      resizeToAvoidBottomPadding: false,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: Column(
          children: [
            SearchBar(),
            SizedBox(
              height: 20,
            ),
            GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
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
