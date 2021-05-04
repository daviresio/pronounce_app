import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pronounce_app/components/pronounce_icon_button.dart';
import 'package:pronounce_app/components/pronounce_ui.dart';
import 'package:pronounce_app/core/pronouce_spacing.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_icons.dart';
import 'package:pronounce_app/core/pronounce_ink_well.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';

class PraticeScreen extends StatelessWidget {
  final String text;

  const PraticeScreen({required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PronounceColors.lightGray,
      appBar: PronounceUI.appBarCustomContent(
        context,
        child: Container(
          padding: const EdgeInsets.only(
            top: PronounceSpacing.big1,
            left: PronounceSpacing.small1,
            right: PronounceSpacing.small1,
          ),
          color: PronounceColors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PronounceInkWell(
                padding: PronounceSpacing.small1,
                radius: PronounceRadius.circular,
                onTap: () => Get.back(),
                child: Icon(PronounceIcons.chevron_left_light),
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 100.00,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 25.0),
        padding: EdgeInsets.symmetric(
          horizontal: PronounceSpacing.medium1,
          vertical: PronounceSpacing.big1,
        ),
        decoration: BoxDecoration(
          color: PronounceColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(PronounceRadius.extraLarge),
            topRight: Radius.circular(PronounceRadius.extraLarge),
          ),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: PronounceSpacing.medium1),
                  child: Text(
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: PronounceColors.textSecundaryColor),
                  ),
                ),
                Row(
                  children: [
                    PronounceIconButton(
                      icon: PronounceIcons.volume_up_light,
                      onTap: () {},
                    ),
                    SizedBox(width: PronounceSpacing.small3),
                    PronounceIconButton(
                      icon: PronounceIcons.volume_light,
                      onTap: () {},
                    ),
                    SizedBox(width: PronounceSpacing.small3),
                    PronounceIconButton(
                      icon: PronounceIcons.bookmark_light,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
