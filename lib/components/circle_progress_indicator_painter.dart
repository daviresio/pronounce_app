import 'package:flutter/material.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';

class CircleProgressIndicatorPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var circlePaint = Paint()
      ..strokeWidth = 2.0
      ..color = PronounceColors.lightGray
      ..style = PaintingStyle.stroke;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
