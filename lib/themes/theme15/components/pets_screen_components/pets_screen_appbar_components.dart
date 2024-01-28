import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../utils/T15common_widgets.dart';

class PetsScreenAppbarComponents extends StatelessWidget {
  const PetsScreenAppbarComponents({Key? key, required this.title, required this.rightIconImage}) : super(key: key);
  final String title;
  final String rightIconImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        backButton(context),
        Expanded(
          child: Text(
            title,
            style: boldTextStyle(size: 22),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: context.cardColor,
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(1, 1)),
              BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(0, 1)),
            ],
          ),
          child: Image.asset(
            rightIconImage,
            height: 25,
            width: 25,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
