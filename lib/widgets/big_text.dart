import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double? size;
  TextOverflow overflow;
  BigText(
      {super.key,
      required this.text,
      this.size,
      this.overflow = TextOverflow.ellipsis,
      this.color = const Color(0xFF332d2b)});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size == 0 ? 20.sp : size,
        overflow: overflow,
      ),
    );
  }
}
