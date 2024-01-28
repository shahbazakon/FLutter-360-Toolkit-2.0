import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/main/utils/AppWidget.dart';
import 'package:prokit_flutter/widgets/materialWidgets/mwDialogAlertPanelWidgets/MWExpansionPannelWidgets/component/MWExpansionPanel7ComponentWidget.dart';

class MWExpansionPanelScreen6 extends StatefulWidget {
  static String tag = '/expansion_panel_screen6';
  @override
  _MWExpansionPanelScreen6State createState() => _MWExpansionPanelScreen6State();
}

class _MWExpansionPanelScreen6State extends State<MWExpansionPanelScreen6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Expansion Panel 6'),
      body: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ListView.builder(
              padding: EdgeInsets.only(bottom: 30, top: 26),
              physics: BouncingScrollPhysics(),
              itemCount: 20,
              itemBuilder: (context, index) {
                return MWExpansionPanel7ComponentWidget().paddingSymmetric(horizontal: 16, vertical: 8);
              })),
    );
  }
}
