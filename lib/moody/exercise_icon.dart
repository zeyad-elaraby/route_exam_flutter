import 'dart:ui';

import 'package:flutter/material.dart';

class ExerciseIcon extends StatelessWidget {
  ExerciseIcon(
      {required this.containerColor, required this.image, required this.text});
  Color containerColor;
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 122,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: containerColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 7),
        child: Row(
          children: [
            Image.asset(image),
            SizedBox(
              width: 12,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
