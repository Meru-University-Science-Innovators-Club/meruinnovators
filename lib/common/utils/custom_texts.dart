import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TitleTexts extends StatelessWidget {
  const TitleTexts({required this.text, super.key, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: color,
        fontFamily: 'Poppins',
      ),
    );
  }
}


class BodyText extends StatelessWidget {
  const BodyText({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        fontFamily: 'Poppins',
      ),
    );
  }
}

class SubTitleText extends StatelessWidget {
  const SubTitleText({required this.text, super.key, this.color});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(
        fontSize: 12,
        color: color,
        fontWeight: FontWeight.w200,
      ),
    );
  }
}



