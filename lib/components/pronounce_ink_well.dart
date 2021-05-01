import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';

class PronounceInkWell extends StatelessWidget {
  final double radius;
  final void Function()? onTap;
  final Widget child;

  const PronounceInkWell({
    this.radius = 0.0,
    this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: PronounceColors.transparent,
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        onTap: onTap != null
            ? () {
                HapticFeedback.lightImpact();
                onTap!();
              }
            : null,
        borderRadius: BorderRadius.circular(radius),
        child: child,
      ),
    );
  }
}
