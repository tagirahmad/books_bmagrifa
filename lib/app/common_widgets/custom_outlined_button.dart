import 'package:flutter/material.dart';

class CustomOutlinedButton extends OutlinedButton {
  CustomOutlinedButton({
    required this.onPress,
    required this.child,
    required this.style,
  }) : super(
          style: style,
          onPressed: onPress,
          child: child,
        );
  final VoidCallback onPress;
  final Widget child;
  final ButtonStyle style;

  // @override
  // Widget build(BuildContext context) {
  //   return OutlinedButton(
  // style: OutlinedButton.styleFrom(
  //     backgroundColor: active ? const Color(0xFFFF7026) : Colors.white,
  //     primary: active ? Colors.white : Colors.black,
  //     side: const BorderSide(width: 2, color: Color(0xFFFF7026)),
  //     shape: shape),
  //       onPressed: onPress,
  // child: Container(
  //     width: MediaQuery.of(context).size.width * 0.4,
  //     height: 40,
  //     alignment: Alignment.center,
  //     child: Text(text)));
  // }
}
