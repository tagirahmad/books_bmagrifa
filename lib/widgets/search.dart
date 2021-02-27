import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: Color(0xFFEFEFEF),
          filled: true,
          prefixIcon: Icon(Icons.search, color: Color(0xFF8D8D8D),),
          hintText: 'Искать книгу',
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
            // borderSide: BorderSide(
            //   color: Colors.transparent,
            //   width: 1.0,
            // ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          )),
    );
  }
}
