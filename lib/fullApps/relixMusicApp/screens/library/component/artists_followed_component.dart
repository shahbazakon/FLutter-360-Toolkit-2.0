import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../components/cached_image_widget.dart';
import '../../../components/view_all_label_component.dart';
import '../artist_detail_screen.dart';
import '../artists_followed_screen.dart';
import '../model/artists_followed_list_model.dart';

class ArtistsFollowedComponent extends StatefulWidget {
  @override
  _ArtistsFollowedComponentState createState() => _ArtistsFollowedComponentState();
}

class _ArtistsFollowedComponentState extends State<ArtistsFollowedComponent> {
  List<ArtistsFollowedListModel> artistsFollowedList = getArtistsFollowedList();

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ViewAllLabel(
          label: 'Artists Followed',
          labelSize: 16,
          style: primaryTextStyle(color: whiteColor),
          onTap: () {
            ArtistsFollowedScreen(appBarTitle: 'Artists Followed').launch(context, pageRouteAnimation: PageRouteAnimation.Slide);
          },
        ).paddingSymmetric(horizontal: 16),
        12.height,
        HorizontalList(
          itemCount: artistsFollowedList.length,
          spacing: 16,
          runSpacing: 0,
          padding: EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (context, index) {
            ArtistsFollowedListModel artistsFollowedData = artistsFollowedList[index];
            return CachedImageWidget(
              url: artistsFollowedData.artistImg.validate(),
              height: 70,
              fit: BoxFit.cover,
              width: 70,
              radius: 80,
            ).onTap(() {
              ArtistDetailScreen(artistData: artistsFollowedData).launch(context, pageRouteAnimation: PageRouteAnimation.Slide);
            });
          },
        )
      ],
    );
  }
}
