import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  TextOverflow overflow;
  BigText(
      {super.key,
      required this.text,
      this.size = 20,
      this.overflow = TextOverflow.ellipsis,
      this.color = const Color(0xFF332d2b)});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size,
        overflow: overflow,
      ),
    );
  }
}
