import 'package:flutter/widgets.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';

class PronounceText {
  static Color colorByScore(double score) {
    if (score <= 50) {
      return PronounceColors.dangerDark;
    } else if (score <= 80) {
      return PronounceColors.warningDark;
    } else {
      return PronounceColors.green;
    }
  }
}
