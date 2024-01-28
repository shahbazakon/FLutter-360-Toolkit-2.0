import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../components/app_scaffold.dart';
import '../../../utils/common.dart';
import '../../../utils/images.dart';
import '../../notification/notification_screen.dart';
import '../../search/search_screen.dart';
import '../component/featured_list_component.dart';
import '../component/popular_artists_component.dart';
import '../component/recent_play_music_component.dart';
import '../component/slider_location_component.dart';

class HomeFragment extends StatefulWidget {
  @override
  _HomeFragmentState createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
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
        title: '',
        showBack: false,
        isCenter: false,
        titleWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Evening  🌙', style: secondaryTextStyle()),
            10.height,
            Text('Esther Howard', style: primaryTextStyle(color: whiteColor)),
          ],
        ),
        actionWidget1: IconButton(
          icon: Image.asset(ic_search, height: 22, width: 22),
          onPressed: () {
            SearchScreen().launch(context, pageRouteAnimation: PageRouteAnimation.Slide);
          },
        ),
        actionWidget2: IconButton(
          icon: Image.asset(ic_notification, height: 22, width: 22),
          onPressed: () {
            NotificationScreen().launch(context);
          },
        ),
      ),
      body: AnimatedScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        listAnimationType: ListAnimationType.FadeIn,
        fadeInConfiguration: FadeInConfiguration(duration: 2.seconds),
        children: [
          6.height,
          SliderLocationComponent(),
          8.height,
          FeaturedListComponent(),
          16.height,
          PopularArtistsComponent(),
          16.height,
          RecentPlayComponent(),
          16.height,
        ],
      ),
    );
  }
}
