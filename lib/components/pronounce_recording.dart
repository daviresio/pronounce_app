import 'package:flutter/material.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_icons.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';

class PronounceRecording extends StatelessWidget {
  final bool isRecording;
  final Widget child;

  const PronounceRecording({
    required this.isRecording,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            color: PronounceColors.primaryColor1.withOpacity(0.3),
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 128,
              height: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(PronounceRadius.circular),
              ),
              alignment: Alignment.center,
              child: Icon(
                PronounceIcons.waveform_path_light,
                size: 30,
                color: PronounceColors.white,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
