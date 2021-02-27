import 'package:bmagrifa_books/widgets/search.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 4,
              child: Search()),
          // Spacer(),
          Expanded(
            flex: 1,
              child: IconButton(icon: Icon(Icons.menu), onPressed: () {}))
        ],
      ),
    );
  }
}
