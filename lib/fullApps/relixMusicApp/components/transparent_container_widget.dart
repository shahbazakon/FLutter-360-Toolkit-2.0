import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/constant.dart';

class TransparentContainerWidget extends StatelessWidget {
  final String? text;
  final String? img;
  final Widget? child;
  final Widget? innerChild;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? mainPadding;
  final double? borderRadius;
  final VoidCallback? onPressed;
  final Gradient? gradient;

  TransparentContainerWidget(
    BuildContext context, {
    this.text,
    this.img,
    this.child,
    this.innerChild,
    this.height,
    this.padding,
    this.borderRadius,
    this.onPressed,
    this.mainPadding,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Blur(
      blur: 30,
      borderRadius: radius(borderRadius ?? DEFAULT_RADIUS),
      padding: mainPadding ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: onPressed,
        child: child ??
            Container(
              width: context.width(),
              height: height,
              alignment: Alignment.center,
              padding: padding ?? EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: boxDecorationDefault(
                color: Colors.grey.withAlpha(22),
                borderRadius: radius(borderRadius ?? DEFAULT_RADIUS),
                boxShadow: defaultBoxShadow(blurRadius: 0, shadowColor: Colors.black.withAlpha(20)),
                gradient: gradient,
              ),
              child: innerChild ??
                  TextIcon(
                    text: text.validate(),
                    textStyle: primaryTextStyle(color: Colors.white),
                    prefix: img.validate().isNotEmpty ? Image.asset(img.validate(), height: 22, width: 22) : Offstage(),
                  ),
            ),
      ),
    );
  }
}
