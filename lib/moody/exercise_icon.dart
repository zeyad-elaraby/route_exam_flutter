import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseIcon extends StatefulWidget {
  ExerciseIcon(
      {required this.containerColor, required this.image, required this.text});
  Color containerColor;
  String image;
  String text;

  @override
  State<ExerciseIcon> createState() => _ExerciseIconState();
}

class _ExerciseIconState extends State<ExerciseIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: widget.containerColor,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 7),
          child: Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Image.asset(widget.image)),
              // SizedBox(
              //   width: 12,
              // ),
              Text(
                widget.text,
                style: GoogleFonts.inter(
                    fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
