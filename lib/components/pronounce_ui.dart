import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';

class PronounceUI {
  static CupertinoNavigationBar appbar(context, {required String title}) {
    return CupertinoNavigationBar(
      middle: Text(
        title,
        style: Theme.of(context).textTheme.headline1,
      ),
      backgroundColor: PronounceColors.transparent,
    );
  }
}
