import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pronounce_app/core/pronouce_spacing.dart';
import 'package:pronounce_app/core/pronounce_colors.dart';
import 'package:pronounce_app/core/pronounce_radius.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PronounceLoader extends StatelessWidget {
  final bool isLoading;
  final Widget child;

  const PronounceLoader({
    required this.isLoading,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          child,
          if (isLoading)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: PronounceSpacing.big1,
              ),
              color: PronounceColors.primaryColor1.withOpacity(0.8),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(PronounceSpacing.medium1),
                  decoration: BoxDecoration(
                    color: PronounceColors.white,
                    borderRadius: BorderRadius.circular(PronounceRadius.normal),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CupertinoActivityIndicator(),
                      SizedBox(height: PronounceSpacing.small3),
                      Text(
                        '${AppLocalizations.of(context)!.loading}...',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: PronounceColors.textSecundaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
