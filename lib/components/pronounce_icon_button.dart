import 'package:flutter/material.dart';
import 'package:pronounce_app/core/pronouce_spacing.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_ink_well.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';

class PronounceIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;

  const PronounceIconButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: PronounceColors.primaryColor1, width: 0.5),
        borderRadius: BorderRadius.circular(PronounceRadius.circular),
      ),
      child: PronounceInkWell(
        radius: PronounceRadius.circular,
        padding: PronounceSpacing.small1,
        child: Icon(
          icon,
          size: 20,
          color: PronounceColors.primaryColor1,
        ),
      ),
    );
  }
}
