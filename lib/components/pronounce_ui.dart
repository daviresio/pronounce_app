import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:pronounce_app/components/pronounce_ink_well.dart';
import 'package:pronounce_app/core/pronouce_spacing.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_icons.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';

class PronounceUI {
  static CupertinoNavigationBar appbar(context, {required String title}) {
    return CupertinoNavigationBar(
      middle: Text(
        title,
        style: Theme.of(context).textTheme.headline1,
      ),
      backgroundColor: PronounceColors.transparent,
    );
  }

  static PreferredSize appBarProgress(context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(40.0),
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
            ),
            Container(
              child: Stack(
                children: [
                  Container(
                    height: 5,
                    width: MediaQuery.of(context).size.width - 130,
                    decoration: BoxDecoration(
                      color: PronounceColors.lightGray,
                      borderRadius:
                          BorderRadius.circular(PronounceRadius.extraLarge),
                    ),
                  )
                ],
              ),
            ),
            PronounceInkWell(
              padding: PronounceSpacing.small1,
              radius: PronounceRadius.circular,
              onTap: () {},
              child: Icon(
                PronounceIcons.language_light,
                color: PronounceColors.blueMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
