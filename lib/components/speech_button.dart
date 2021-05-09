import 'package:flutter/material.dart';
import 'package:pronounce_app/components/pronounce_ink_well.dart';
import 'package:pronounce_app/core/pronouce_spacing.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_icons.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';

class SpeechButton extends StatelessWidget {
  final bool isRecording;
  final void Function() onTap;

  const SpeechButton({required this.isRecording, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 80,
        height: 80,
        margin: EdgeInsets.only(bottom: PronounceSpacing.big1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(PronounceRadius.circular),
          color:
              isRecording ? PronounceColors.green : PronounceColors.blueMedium,
        ),
        child: PronounceInkWell(
          onTap: onTap,
          radius: PronounceRadius.circular,
          child: Center(
            child: Container(
              padding: EdgeInsets.only(
                right: isRecording
                    ? PronounceSpacing.small1
                    : PronounceSpacing.none,
              ),
              child: Icon(
                isRecording
                    ? PronounceIcons.waveform_light
                    : PronounceIcons.microphone_light,
                size: 30,
                color: PronounceColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
