import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/main.dart';
import 'package:prokit_flutter/workingApps/chatGPT/utils/colors.dart';

import '../../../main/utils/AppColors.dart';

InputDecoration inputDecoration(
  BuildContext context, {
  Widget? prefixIcon,
  Widget? suffixIcon,
  String? label,
  String? labelText,
  double? borderRadius,
  Color? borderColor,
  EdgeInsetsGeometry? contentPadding,
}) {
  return InputDecoration(
    contentPadding: contentPadding ?? EdgeInsets.only(left: 16),
    hintText: label,
    labelText: labelText,
    labelStyle: secondaryTextStyle(),
    hintStyle: secondaryTextStyle(),
    alignLabelWithHint: true,
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    border: InputBorder.none,
    filled: true,
    fillColor: appStore.isDarkModeOn ? replyMsgBgColor : Colors.white,
    enabledBorder: OutlineInputBorder(
      borderRadius: radius(borderRadius ?? defaultRadius),
      borderSide: BorderSide(color: borderColor ?? Colors.transparent, width: 0.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: radius(borderRadius ?? defaultRadius),
      borderSide: BorderSide(width: 0.0, color: borderColor ?? Colors.transparent),
    ),
  );
}

Decoration decoration({Color? color}) {
  return BoxDecoration(
    color: appStore.isDarkModeOn ? color ?? replyMsgBgColor.withAlpha(90) : color ?? appColorPrimary.withAlpha(20),
    borderRadius: radius(22),
    shape: BoxShape.rectangle,
  );
}
