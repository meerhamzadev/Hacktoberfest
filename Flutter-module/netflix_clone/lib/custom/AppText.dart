import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  String title;
  Color? color;
  double? size;
  FontWeight? weight;
  AppText(
    this.title, {
    this.size = 17,
    this.weight = FontWeight.normal,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    );
  }
}
