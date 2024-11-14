import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TitleTexts extends StatelessWidget {
  const TitleTexts({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
      ),
    );
  }
}
