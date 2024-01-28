import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'account_screen_buttons_component.dart';

class DrawerScreenComponent extends StatelessWidget {
  const DrawerScreenComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          50.height,
          Row(
            children: [
              SizedBox(width: 16),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.cardColor,
                ),
                child: Image.asset(
                  "images/theme15/account_images/profile2.png",
                  height: 45,
                  width: 45,
                  fit: BoxFit.cover,
                ),
              ),
              12.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Alexander Jack",
                    style: boldTextStyle(),
                  ),
                  2.height,
                  Text(
                    "AlexanderJack@gmail.com",
                    style: secondaryTextStyle(),
                  )
                ],
              ),
            ],
          ),
          60.height,
          AccountScreenButtonComponent(),
          130.height,
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings, color: Colors.grey),
              ),
              Container(
                height: 25,
                width: 1.5,
                decoration: BoxDecoration(color: context.cardColor),
              ),
              16.width,
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/theme15/icons/logout.png",
                    height: 22,
                    width: 22,
                    color: Colors.grey,
                  ),
                  8.width,
                  TextButton(
                    style: ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.all(2))),
                    onPressed: () {},
                    child: Text(
                      "Sign Out",
                      style: primaryTextStyle(size: 20, color: Colors.grey),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
