import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/T15colors.dart';

class ElevatedButtonComponent extends StatelessWidget {
  final String text;
  final String toastText;

  ElevatedButtonComponent({Key? key, this.toastText = '', required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppButton(
      color: primarycolor,
      text: text,
      textStyle: boldTextStyle(color: Colors.white),
      width: context.width() - 32,
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: Duration(milliseconds: 1500),
            // shape: RoundedRectangleBorder(
            //   // borderRadius: BorderRadius.only(
            //   //   topRight: Radius.circular(12),
            //   //   topLeft: Radius.circular(12),
            //   // ),
            // ),
            padding: EdgeInsets.all(16),
            content: Text(
              toastText,
              style: primaryTextStyle(color: Colors.white),
            ),
            backgroundColor: primarycolor,
            dismissDirection: DismissDirection.down,
          ),
        );
      },
    );
  }
}
