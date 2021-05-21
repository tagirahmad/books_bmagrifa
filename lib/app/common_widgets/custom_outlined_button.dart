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
}
