import 'package:flutter/material.dart';
import 'package:pronounce_app/components/circle_progress_indicator_painter.dart';

class PronounceCircleProgressIndicator extends StatelessWidget {
  final int value;
  final _size = 60.0;

  const PronounceCircleProgressIndicator({required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _size,
      height: _size,
      child: CustomPaint(
        painter: CircleProgressIndicatorPainter(),
        child: Text('$value%'),
      ),
    );
  }
}
