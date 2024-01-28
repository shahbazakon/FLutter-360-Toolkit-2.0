import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/flixv2/model/walkthrough_model.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/dashboard_screens/dashboard_screen.dart';
import 'package:prokit_flutter/fullApps/flixv2/utils/common_widgets.dart';

import '../../components/walkthrough_components/walkthrough_component.dart';
import '../authentication_screen/startwith_screen.dart';

class WalkthroughScreen extends StatefulWidget {
  State<WalkthroughScreen> createState() => WalkthroughScreenState();
}

class WalkthroughScreenState extends State<WalkthroughScreen> {
  late PageController walkthroughPageController;
  List<WalkthroughModel> walkthroughData = getWalkthroughData();
  int currentIndex = 0;

  void initState() {
    super.initState();
    walkthroughPageController = PageController(initialPage: 0);
  }

  void customModalBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: context.cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(14),
          topLeft: Radius.circular(14),
        ),
      ),
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.shade600,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Start with',
                style: boldTextStyle(size: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 24),
              StartWithScreen(),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: walkthroughData.length,
            controller: walkthroughPageController,
            onPageChanged: (value) {
              currentIndex = value;
              setState(() {});
            },
            itemBuilder: (context, index) {
              return WalkthroughComponent(
                data: walkthroughData[index],
              );
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.cardColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(14),
                  topLeft: Radius.circular(14),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 16),
                  Text(
                    walkthroughData[currentIndex].subtitle!,
                    style: secondaryTextStyle(size: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 32),
                  currentIndex == 2
                      ? GestureDetector(
                          onTap: () {
                            customModalBottomSheet(context);
                          },
                          child: redirectionButtonContainer(
                            title: 'Get Started',
                            width: MediaQuery.of(context).size.width - 32,
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {
                                  DashboardScreen().launch(context);
                                },
                                child: Text('Skip', style: primaryTextStyle(size: 14))),
                            Wrap(
                              spacing: 4,
                              children: List.generate(
                                3,
                                (index) => customDots(currentIndex, index),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                walkthroughPageController.jumpToPage(currentIndex + 1);
                              },
                              child: customFloatingButton(paddingValue: 4),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
* */
