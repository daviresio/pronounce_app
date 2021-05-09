import 'package:flutter/widgets.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';

class PronounceElevations {
  static final BoxShadow elevation1 = BoxShadow(
    color: PronounceColors.black.withOpacity(0.08),
    offset: Offset(0, 1),
    blurRadius: 4,
    spreadRadius: 0,
  );

  static final BoxShadow elevation2 = BoxShadow(
    color: PronounceColors.black.withOpacity(0.08),
    offset: Offset(0, 2),
    blurRadius: 6,
    spreadRadius: 0,
  );

  static final BoxShadow elevation3 = BoxShadow(
    color: PronounceColors.black.withOpacity(0.08),
    offset: Offset(0, 4),
    blurRadius: 10,
    spreadRadius: 0,
  );

  static final BoxShadow elevation4 = BoxShadow(
    color: PronounceColors.black.withOpacity(0.08),
    offset: Offset(0, 6),
    blurRadius: 14,
    spreadRadius: 0,
  );

  static final BoxShadow elevation5 = BoxShadow(
    color: PronounceColors.black.withOpacity(0.08),
    offset: Offset(0, 8),
    blurRadius: 18,
    spreadRadius: 0,
  );
}
