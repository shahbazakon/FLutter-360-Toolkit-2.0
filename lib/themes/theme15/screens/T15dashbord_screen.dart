import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/themes/theme15/components/dashbord_components/dashboard_appbar_component.dart';
import 'package:prokit_flutter/themes/theme15/components/dashbord_components/dashboard_card_component.dart';
import 'package:prokit_flutter/themes/theme15/components/dashbord_components/dashboard_catgories_components.dart';
import 'package:prokit_flutter/themes/theme15/components/dashbord_components/dashboard_pets_components.dart';
import 'package:prokit_flutter/themes/theme15/components/dashbord_components/dashboard_title_component.dart';
import 'package:prokit_flutter/themes/theme15/components/drawer_screen_component.dart';

import '../../../main.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) => ZoomDrawer(
        mainScreenScale: 0.3,
        androidCloseOnBackTap: true,
        style: DrawerStyle.defaultStyle,
        closeCurve: Curves.decelerate,
        mainScreenTapClose: true,
        menuScreenWidth: MediaQuery.of(context).size.width,
        angle: -9,
        borderRadius: 50,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 1, offset: Offset(1, 1)),
          BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 1, offset: Offset(0, 1)),
        ],
        showShadow: true,
        shadowLayer1Color: appStore.isDarkModeOn ? Colors.grey : Colors.black12,
        shadowLayer2Color: appStore.isDarkModeOn ? Colors.black12 : context.cardColor,
        mainScreen: DashBoard(),
        menuScreen: DrawerScreenComponent(),
      );
}

class DashBoard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DashBoardState();
}

class DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top + 16),
              DashboardAppBarComponent(),
              28.height,
              DashboardTitleComponent(),
              28.height,
              DashboardCardComponent(),
              28.height,
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text("Categories", style: boldTextStyle(size: 18)),
              ),
              16.height,
              DashboardCatgoriesComponents(),
              28.height,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 16),
                child: DashboardPetsComponents(),
              ),
            ],
          ),
        ),
      );
    }
  }
}
