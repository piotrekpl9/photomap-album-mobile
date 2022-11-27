import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomLabel extends StatelessWidget {
  String text;
  double strokeWidth;
  double? fontSize;
  Color? color;
  Color? strokeColor;
  CustomLabel(
      {required this.text,
      required this.strokeWidth,
      this.fontSize,
      this.color,
      this.strokeColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: fontSize ?? 20,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = strokeWidth
                ..color = strokeColor ?? Colors.black),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize ?? 20,
            color: color ?? Colors.white,
          ),
        ),
      ],
    );
  }
}
