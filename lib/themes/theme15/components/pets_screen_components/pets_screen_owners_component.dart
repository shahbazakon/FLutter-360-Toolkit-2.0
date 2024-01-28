import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../utils/T15colors.dart';
import '../../utils/T15comman.dart';

class PetsScreenOwnersComponent extends StatelessWidget {
  const PetsScreenOwnersComponent({Key? key, required this.owner, required this.distance, required this.address})
      : super(key: key);
  final String owner;
  final String distance;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              owner,
              style: boldTextStyle(size: 18),
            ),
            4.height,
            Row(
              children: [
                4.width,
                Image.asset(
                  "images/theme15/icons/location1.png",
                  height: 15,
                  width: 15,
                  color: primarycolor,
                ),
                4.width,
                Text(
                  "$address ($distance)",
                  style: style2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 1, offset: Offset(1, 1)),
              BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 1, offset: Offset(0, 1)),
            ],
            color: context.cardColor,
          ),
          child: Image.asset(
            "images/theme15/icons/heart.png",
            height: 25,
            width: 25,
            color: tertiarycolor,
          ),
        )
      ],
    );
  }
}
