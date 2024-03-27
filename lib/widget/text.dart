import 'package:flipkart/res/colors.dart';
import 'package:flutter/material.dart';

class text extends StatelessWidget {
  final String title;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  const text(
      {super.key,
      required this.title,
      required this.fontColor,
      required this.fontSize,
      required this.fontWeight,
      required this.fontStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: fontColor,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        fontSize: fontSize,
      ),
    );
  }
}
