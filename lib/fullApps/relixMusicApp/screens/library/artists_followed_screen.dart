import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../components/app_scaffold.dart';
import '../../utils/common.dart';
import '../../utils/images.dart';
import 'component/artists_followed_list_screen.dart';

class ArtistsFollowedScreen extends StatefulWidget {
  final String? appBarTitle;
  final bool hideActionWidget;

  ArtistsFollowedScreen({this.appBarTitle, this.hideActionWidget = true});

  @override
  _ArtistsFollowedScreenState createState() => _ArtistsFollowedScreenState();
}

class _ArtistsFollowedScreenState extends State<ArtistsFollowedScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: commonAppBarWidget(
        context,
        title: widget.appBarTitle.validate(),
        actionWidget1: widget.hideActionWidget
            ? IconButton(
                icon: Image.asset(ic_add, height: 18, width: 18, color: Colors.white),
                onPressed: () {
                  //
                },
              )
            : Offstage(),
      ),
      body: AnimatedScrollView(
        padding: EdgeInsets.only(bottom: 30),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextIcon(
                text: 'Sort by',
                spacing: 8,
                textStyle: secondaryTextStyle(size: 16),
                prefix: Image.asset(ic_sort_arrow, height: 24, width: 24),
                onTap: () {
                  //
                },
              ).paddingSymmetric(horizontal: 10),
              IconButton(
                icon: Image.asset(ic_menu, height: 20, width: 20, color: Colors.white),
                onPressed: () {
                  //
                },
              ),
            ],
          ),
          ArtistsFollowedListScreen(),
        ],
      ),
    );
  }
}
