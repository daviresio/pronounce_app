import 'package:flutter/material.dart';

class PronounceButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;

  const PronounceButton({
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
