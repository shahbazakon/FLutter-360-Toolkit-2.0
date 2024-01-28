import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'T15colors.dart';

Widget backButton(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);
    },
    child: Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: context.cardColor,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(1, 1)),
          BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(0, 1)),
        ],
      ),
      child: Icon(
        Icons.arrow_back_ios_new_rounded,
        color: Colors.grey,
      ),
    ),
  );
}

Widget titleRow(String title) {
  return Row(
    children: [
      Text(
        title,
        style: boldTextStyle(size: 18),
        textAlign: TextAlign.start,
      ),
    ],
  );
}

Widget textField(
    {Widget? prefixIcon,
    String? hintText,
    Widget? suffixIcon,
    FocusNode? focusNode,
    TextEditingController? textEditingController,
    BoxConstraints? boxConstraints,
    double? borderRadius}) {
  return TextField(
    controller: textEditingController,
    focusNode: focusNode,
    decoration: InputDecoration(
        constraints: boxConstraints,
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(borderRadius ?? 14),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14), borderSide: BorderSide(color: primarycolor, width: 1)),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffixIconConstraints: BoxConstraints(maxWidth: 50, maxHeight: 50),
        hintText: hintText,
        hintStyle: secondaryTextStyle()),
  );
}
