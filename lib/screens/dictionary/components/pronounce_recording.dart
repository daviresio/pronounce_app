import 'package:flutter/material.dart';
import 'package:pronounce_app/components/speech_button.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';

class PronounceRecording extends StatelessWidget {
  final bool isRecording;
  final Widget child;
  final void Function() onFinish;

  const PronounceRecording({
    required this.isRecording,
    required this.child,
    required this.onFinish,
  });

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
            SpeechButton(
              isRecording: true,
              onTap: onFinish,
            ),
          ],
        ],
      ),
    );
  }
}
