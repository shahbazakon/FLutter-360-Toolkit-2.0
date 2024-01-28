import 'package:flutter/material.dart';
import 'package:prokit_flutter/main/utils/AppWidget.dart';
import 'package:prokit_flutter/themes/theme1/screen/T1Signup.dart';
import 'package:prokit_flutter/themes/theme1/screen/t1_walk/IntroScreen.dart';
import 'package:prokit_flutter/themes/theme1/screen/t1_walk/Walkthrough.dart';
import 'package:prokit_flutter/themes/theme1/utils/T1Images.dart';

import '../../../main.dart';
import '../../../main/utils/AppConstant.dart';

class T1WalkThrough extends StatelessWidget {
  static var tag = "/T1WalkThrough";

  final List<Walkthrough> list = [
    Walkthrough(title: "Add Files", content: ProKitShortText, imageIcon: t1_walk1),
    Walkthrough(title: "Select Files", content: ProKitShortText, imageIcon: t1_walk2),
    Walkthrough(title: "Share Files", content: ProKitShortText, imageIcon: t1_walk3),
  ];

  @override
  Widget build(BuildContext context) {
    changeStatusColor(appStore.appBarColor!);
    return Scaffold(
      body: Container(
        child: IntroScreen(
          list,
          MaterialPageRoute(builder: (context) => T1Signup()),
        ),
      ),
    );
  }
}
