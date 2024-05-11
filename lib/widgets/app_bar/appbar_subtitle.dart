import 'package:delivery_boy/theme/custom_text_style.dart';
import 'package:delivery_boy/theme/theme_helper.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppbarSubtitle extends StatelessWidget {
  AppbarSubtitle({super.key, required this.text, this.margin, this.onTap});

  String text;
  EdgeInsetsGeometry? margin;
  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.titleMediumBlack90016.copyWith(
            color: appTheme.black900,
          ),
        ),
      ),
    );
  }
}
