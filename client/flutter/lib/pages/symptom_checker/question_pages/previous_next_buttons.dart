import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:who_app/components/page_button.dart';
import 'package:who_app/components/themed_text.dart';
import 'package:who_app/constants.dart';

class NextButton extends StatelessWidget {
  final bool enableNext;
  final VoidCallback onNext;

  const NextButton({
    Key key,
    @required this.enableNext,
    @required this.onNext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageButton(
      Constants.whoBackgroundBlueColor,
      // TODO: Localize
      "Next",
      enableNext ? onNext : null,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      verticalPadding: 12,
      borderRadius: 500,
      titleStyle: ThemedText.styleForVariant(TypographyVariant.button)
          .merge(TextStyle(color: CupertinoColors.white)),
    );
  }
}
