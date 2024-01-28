import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../utils/T15colors.dart';

class DashboardCardComponent extends StatelessWidget {
  const DashboardCardComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      height: 150,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(1, 1)),
          BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(0, 1)),
        ],
        color: context.cardColor,
      ),
      child: Stack(
        children: [
          Positioned(
            top: -24,
            left: MediaQuery.of(context).size.width / 2,
            child: Container(
              padding: EdgeInsets.all(28),
              decoration: BoxDecoration(shape: BoxShape.circle, color: primarycolor),
            ),
          ),
          Positioned(
            left: 16,
            top: 16,
            child: Text("Join Our Animal Lovers\nCommunity!", style: primaryTextStyle()),
          ),
          Positioned(
            bottom: -20,
            right: -20,
            top: 32,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(75),
                  decoration: BoxDecoration(shape: BoxShape.circle, color: primarycolor),
                ),
                Positioned(
                  left: 40,
                  top: 16,
                  child: Image.asset(
                    "images/theme15/dashboard/dashboard_card_image.png",
                    height: 100,
                    width: 100,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: AppButton(
              textColor: Colors.white,
              color: primarycolor,
              text: 'Join Now',
              textStyle: boldTextStyle(color: Colors.white),
              onTap: () {},
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 36),
            ),
          )
        ],
      ),
    );
  }
}
