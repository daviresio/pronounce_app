import 'package:flutter/material.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';

class PronounceButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final double? width;

  const PronounceButton({
    required this.label,
    this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          textStyle: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(PronounceRadius.extraLarge),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
