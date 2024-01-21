import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/small_text.dart';

class ExpandableText extends StatefulWidget {
  final String text;

  ExpandableText({required this.text});

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool isExpanded = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.text.length > 300) {
      firstHalf = widget.text.substring(0, 200);
      secondHalf = widget.text.substring(201, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return secondHalf.isEmpty
        ? Container(
            child: SmallText(
              text: firstHalf,
              size: 16.sp,
              color: AppColors.paraColor,
              height: 1.8,
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmallText(
                text: isExpanded ? firstHalf + secondHalf : firstHalf + '...',
                size: 16.sp,
                color: AppColors.paraColor,
                height: 1.8,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Row(
                  children: [
                    Text(
                      isExpanded ? "Show Less" : "Show More",
                      style: TextStyle(color: AppColors.mainColor),
                    ),
                    Icon(
                      isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                      color: AppColors.mainColor,
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}
