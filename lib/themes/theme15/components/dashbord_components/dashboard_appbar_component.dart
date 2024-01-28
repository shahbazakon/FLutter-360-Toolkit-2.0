import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../utils/T15colors.dart';

class DashboardAppBarComponent extends StatelessWidget {
  const DashboardAppBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        16.width,
        GestureDetector(
          onTap: () {
            ZoomDrawer.of(context)!.toggle();
          },
          child: Container(
            padding: EdgeInsets.all(10),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: context.cardColor,
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(1, 1)),
                BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(0, 1)),
              ],
            ),
            child: Image.asset(
              "images/theme15/dashboard/dashboard_profile_image.png",
              height: 35,
              width: 35,
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/theme15/icons/location1.png",
                width: 15,
                height: 20,
                color: primarycolor,
              ),
              4.width,
              RichText(
                text: TextSpan(
                  text: "Chicago,",
                  style: boldTextStyle(size: 20),
                  children: [
                    TextSpan(text: " Us", style: secondaryTextStyle(size: 20)),
                  ],
                ),
              ),
              Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey)
            ],
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(1, 1)),
              BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(0, 1)),
            ],
            borderRadius: BorderRadius.circular(10),
            color: context.cardColor,
          ),
          child: Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
        16.width,
      ],
    );
  }
}
