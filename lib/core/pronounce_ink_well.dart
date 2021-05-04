import 'package:flutter/material.dart';
import 'package:pronounce_app/core/pronouce_spacing.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';

class PronounceInkWell extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  final double? radius;
  final double? padding;

  const PronounceInkWell({
    this.onTap,
    required this.child,
    this.radius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: PronounceColors.transparent,
      borderRadius: BorderRadius.circular(radius ?? PronounceRadius.none),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius ?? PronounceRadius.none),
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(padding ?? PronounceSpacing.none),
          child: child,
        ),
      ),
    );
  }
}
