import 'package:delivery_boy/core/network/utils/size_utils.dart';
import 'package:delivery_boy/theme/theme_helper.dart';
import 'package:flutter/material.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(25.h),
      );
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  });

  final Alignment? alignment;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final BoxDecoration? decoration;
  final Widget? child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(12.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}
