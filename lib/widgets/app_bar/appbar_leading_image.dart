import 'package:delivery_boy/core/network/utils/size_utils.dart';
import 'package:delivery_boy/widgets/app_bar/custom_image_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppbarLeadingImage extends StatelessWidget {
  AppbarLeadingImage({super.key, this.imagePath, this.margin, this.onTap});

  String? imagePath;
  EdgeInsetsGeometry? margin;
  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath!,
          height: 15.v,
          width: 10.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
