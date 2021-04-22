import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_text.dart';

class PronounceUI {
  static CupertinoNavigationBar appbar({required String title}) {
    return CupertinoNavigationBar(
      middle: Text(title, style: PronounceText.titleWhite()),
      backgroundColor: PronounceColors.transparent,
    );
  }
}
