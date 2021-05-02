import 'package:flutter/material.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';

class PronounceTextField extends StatelessWidget {
  final String? label;
  final String? placeholder;
  final TextEditingController? controller;
  final void Function(String value)? onChanged;

  const PronounceTextField({
    this.label,
    this.placeholder,
    this.controller,
    this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            color: PronounceColors.textSecundaryColor,
          ),
      decoration: InputDecoration(
        labelText: label,
        hintText: placeholder,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(PronounceRadius.extraLarge)),
        fillColor: PronounceColors.white,
        filled: true,
      ),
    );
  }
}
