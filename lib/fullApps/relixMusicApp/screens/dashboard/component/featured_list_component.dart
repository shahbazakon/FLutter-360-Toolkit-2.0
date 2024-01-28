import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../components/cached_image_widget.dart';
import '../../../components/view_all_label_component.dart';
import '../../../utils/images.dart';

class FeaturedListComponent extends StatefulWidget {
  @override
  _FeaturedListComponentState createState() => _FeaturedListComponentState();
}

class _FeaturedListComponentState extends State<FeaturedListComponent> {
  List<String> artistList = [alan_walker_artists, tim_david_artists, marsh_mello_artists, akon_artists];

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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ViewAllLabel(
            label: 'Featured List',
            onTap: () {
              //
            },
          ),
          12.height,
          Row(
            children: [
              AnimatedWrap(
                spacing: 16,
                runSpacing: 16,
                itemCount: artistList.length,
                itemBuilder: (ctx, index) {
                  return CachedImageWidget(
                    url: artistList[index],
                    height: 70,
                    fit: BoxFit.cover,
                    width: 70,
                    radius: 100,
                  );
                },
              ).expand(),
              8.width,
              Container(
                width: 100,
                decoration: boxDecorationDefault(
                  color: Colors.grey.withAlpha(25),
                  borderRadius: radius(18),
                  boxShadow: defaultBoxShadow(blurRadius: 0, shadowColor: Colors.black.withAlpha(20), spreadRadius: 0),
                ),
                child: Column(
                  children: [
                    SettingItemWidget(
                      title: 'thank u, next',
                      titleTextStyle: primaryTextStyle(size: 14, color: Colors.white),
                      subTitle: '12 Songs',
                      subTitleTextStyle: secondaryTextStyle(size: 16),
                      trailing: Icon(Icons.more_vert, size: 20, color: Colors.white),
                      padding: EdgeInsets.zero,
                    ).paddingAll(8),
                    CachedImageWidget(
                      url: thank_u_next,
                      height: 90,
                      width: context.width(),
                      fit: BoxFit.cover,
                    ).cornerRadiusWithClipRRect(18).paddingAll(8),
                  ],
                ),
              ).expand(),
            ],
          ),
        ],
      ),
    );
  }
}
