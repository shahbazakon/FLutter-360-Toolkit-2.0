import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class DashboardTitleComponent extends StatelessWidget {
  const DashboardTitleComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Wrap(
        direction: Axis.vertical,
        spacing: 2,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          Text(
            "Hi Jack ",
            style: boldTextStyle(size: 18),
            textAlign: TextAlign.start,
          ),
          Text(
            "Good morning!",
            style: primaryTextStyle(size: 18),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
