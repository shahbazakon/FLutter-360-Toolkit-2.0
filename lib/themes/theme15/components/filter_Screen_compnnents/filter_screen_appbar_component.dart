import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../utils/T15colors.dart';
import '../../utils/T15common_widgets.dart';

class FilterScreenAppbarComponent extends StatelessWidget {
  const FilterScreenAppbarComponent({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        backButton(context),
        Text(
          text,
          style: boldTextStyle(size: 22),
        ),
        TextButton(
          onPressed: () {},
          style: ButtonStyle(
            visualDensity: VisualDensity.compact,
            padding: MaterialStatePropertyAll(EdgeInsets.zero),
          ),
          child: Text(
            "Clear All",
            style: primaryTextStyle(color: primarycolor),
          ),
        ),
      ],
    );
  }
}
