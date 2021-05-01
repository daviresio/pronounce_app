import 'package:flutter/material.dart';
import 'package:pronounce_app/components/pronounce_ink_well.dart';
import 'package:pronounce_app/core/pronouce_spacing.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_icons.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';

class PronounceRecording extends StatelessWidget {
  final bool isRecording;
  final Widget child;
  final void Function() onFinish;

  const PronounceRecording({
    required this.isRecording,
    required this.child,
    required this.onFinish,
  });

  Widget get _speakingButton {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 80,
        height: 80,
        margin: EdgeInsets.only(bottom: PronounceSpacing.big1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(PronounceRadius.circular),
          color: PronounceColors.green,
        ),
        child: PronounceInkWell(
          onTap: onFinish,
          radius: PronounceRadius.circular,
          child: Center(
            child: Icon(
              PronounceIcons.waveform_light,
              size: 30,
              color: PronounceColors.white,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          child,
          if (isRecording) ...[
            Container(
              color: PronounceColors.primaryColor1.withOpacity(0.8),
            ),
            _speakingButton,
          ],
        ],
      ),
    );
  }
}
