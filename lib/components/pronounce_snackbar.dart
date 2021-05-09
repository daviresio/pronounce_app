import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';
import 'package:pronounce_app/core/pronouce_spacing.dart';

//Styled snackbar with warning and error styles
class PronounceSnackbar {
  static final PronounceSnackbar _instance = PronounceSnackbar._internal();
  PronounceSnackbar._internal();

  factory PronounceSnackbar() {
    return _instance;
  }

  static void show({
    required String text,
    required PronounceSnackBarStatus status,
    required BuildContext context,
  }) {
    var snackbar = SnackBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(PronounceRadius.small),
      ),
      backgroundColor: values[status]!.backgroundColor,
      content: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(values[status]!.icon, color: values[status]!.contentColor),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: PronounceSpacing.small1),
                child: Text(
                  text,
                  softWrap: true,
                  style: Theme.of(context).textTheme.overline!.copyWith(
                        color: values[status]!.contentColor,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
            InkWell(
              onTap: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
              child: Icon(
                Icons.close_outlined,
                color: values[status]!.contentColor,
              ),
            ),
          ],
        ),
      ),
      duration: Duration(seconds: 4),
      behavior: SnackBarBehavior.floating,
      padding: EdgeInsets.symmetric(
        horizontal: PronounceSpacing.small4,
        vertical: PronounceSpacing.tiny2,
      ),
      margin: EdgeInsets.all(PronounceSpacing.big1),
      elevation: 0,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}

enum PronounceSnackBarStatus { error, warning }

class _PronounceSnackBarValue {
  final IconData icon;
  final Color backgroundColor;
  final Color contentColor;

  _PronounceSnackBarValue({
    required this.icon,
    required this.backgroundColor,
    required this.contentColor,
  });
}

Map<PronounceSnackBarStatus, _PronounceSnackBarValue> values = {
  PronounceSnackBarStatus.warning: _PronounceSnackBarValue(
    icon: Icons.warning_amber_sharp,
    backgroundColor: PronounceColors.warningLight,
    contentColor: PronounceColors.warningDark,
  ),
  PronounceSnackBarStatus.error: _PronounceSnackBarValue(
    icon: Icons.error_outline,
    backgroundColor: PronounceColors.dangerLight,
    contentColor: PronounceColors.dangerDark,
  ),
};
