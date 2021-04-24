import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:pronounce_app/components/pronounce_ui.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pronounce_app/core/pronounce_icons.dart';
import 'package:pronounce_app/core/pronounce_text.dart';
import 'package:pronounce_app/helpers/pronounce_record.dart';
import 'package:pronounce_app/services/speech_service.dart';
import 'package:permission_handler/permission_handler.dart';

class DictionaryScreen extends StatefulWidget {
  @override
  _DictionaryScreenState createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  var isRecording = false;
  final _record = PronounceRecord();

  @override
  void initState() {
    super.initState();
  }

  Future<void> checkPermissions() async {
    if (!(await Permission.contacts.request().isGranted)) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.location,
        Permission.storage,
      ].request();
      print(statuses[Permission.location]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PronounceColors.primaryColor1,
      appBar: PronounceUI.appbar(
        title: AppLocalizations.of(context)!.dictionary,
      ),
      body: FutureBuilder<FlutterSoundRecorder?>(
          future: _record.openAudioSession(),
          builder: (context, snapshot) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                physics: ClampingScrollPhysics(),
                children: [
                  Text(
                    AppLocalizations.of(context)!.whatDoYouWantSpeak,
                    style: PronounceText.labelWhite1(),
                  ),
                  Row(
                    children: [
                      _box(
                        title: AppLocalizations.of(context)!.speak,
                        description: AppLocalizations.of(context)!
                            .pronounceYourPhraseToCheckYourScore,
                        icon: PronounceIcons.microphone_light,
                        onTap: () async {
                          print('tapped');
                          setState(() {
                            isRecording = !isRecording;
                          });

                          if (isRecording) {
                            await _record.record();
                          } else {
                            await _record.stopRecorder();
                            var filePath = _record.filePath;
                            await SpeechService.speech(filePath: filePath!);
                          }
                        },
                        colorBottom: isRecording
                            ? Colors.red
                            : PronounceColors.blueMedium,
                        colorTop: isRecording
                            ? Colors.red
                            : PronounceColors.blueLight,
                      ),
                      SizedBox(width: 16),
                      _box(
                        title: AppLocalizations.of(context)!.scanImage,
                        description: AppLocalizations.of(context)!
                            .convertTheImageToTextAndPronounceThePhrases,
                        icon: PronounceIcons.image_light,
                        onTap: () {},
                        colorBottom: PronounceColors.pink,
                        colorTop: PronounceColors.orange,
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }

  Widget _box({
    required String title,
    required String description,
    required IconData icon,
    required void Function() onTap,
    required Color colorBottom,
    required Color colorTop,
  }) {
    return Flexible(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 180.0,
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(
              colors: [
                colorBottom,
                colorTop,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title),
              Icon(icon),
              Text(description),
            ],
          ),
        ),
      ),
    );
  }
}
