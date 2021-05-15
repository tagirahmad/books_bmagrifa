import 'package:flutter/material.dart';

class Search extends TextField {
  Search({
    required String hintText,
    Color? fillColor,
    Color? prefixIconColor,
    TextEditingController? textEditingController,
    FocusNode? focusNode,
  }) : super(
          controller: textEditingController,
          focusNode: focusNode,
          decoration: InputDecoration(
            fillColor: fillColor ?? null,
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              color: prefixIconColor ?? null,
            ),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
            ),
          ),
        );
}
