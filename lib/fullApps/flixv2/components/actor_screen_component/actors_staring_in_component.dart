import 'package:flutter/material.dart';
import 'package:prokit_flutter/fullApps/flixv2/utils/common_widgets.dart';

import '../home_screen_component/movie_banner_component.dart';

class ActorsStaringInComponent extends StatefulWidget {
  State<ActorsStaringInComponent> createState() => ActorsStaringInComponentState();
}

class ActorsStaringInComponentState extends State<ActorsStaringInComponent> {
  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleRowItem(isSeeAll: false, title: 'Staring In'),
        SingleChildScrollView(
          padding: EdgeInsets.only(top: 16, bottom: 24),
          child: Wrap(
            runSpacing: 16,
            children: List.generate(
              6,
              (index) => MovieBannerComponent(),
            ),
          ),
        ),
      ],
    );
  }
} /*,*/
