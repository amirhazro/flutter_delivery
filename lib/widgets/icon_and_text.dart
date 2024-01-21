import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/widgets/small_text.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const IconAndText(
      {super.key, required this.icon, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 24.h,
          color: color,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: text,
          size: 12.sp,
        ),
      ],
    );
  }
}
