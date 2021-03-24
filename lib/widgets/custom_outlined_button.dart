import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton(
      {@required this.onPress,
      @required this.text,
      @required this.active,
      this.shape});
  final VoidCallback onPress;
  final String text;
  final bool active;
  final OutlinedBorder shape;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: active ? const Color(0xFFFF7026) : Colors.white,
            primary: active ? Colors.white : Colors.black,
            side: const BorderSide(width: 2, color: Color(0xFFFF7026)),
            shape: shape),
        onPressed: onPress,
        child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: 40,
            alignment: Alignment.center,
            child: Text(text)));
  }
}
