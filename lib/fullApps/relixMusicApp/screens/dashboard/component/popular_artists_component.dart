import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../components/cached_image_widget.dart';
import '../../../components/view_all_label_component.dart';
import '../../library/artist_detail_screen.dart';
import '../../library/artists_followed_screen.dart';
import '../../library/model/artists_followed_list_model.dart';

class PopularArtistsComponent extends StatefulWidget {
  final double? radius;

  PopularArtistsComponent({this.radius});

  @override
  _PopularArtistsComponentState createState() => _PopularArtistsComponentState();
}

class _PopularArtistsComponentState extends State<PopularArtistsComponent> {
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
          label: 'Popular Artists',
          onTap: () {
            ArtistsFollowedScreen(appBarTitle: 'Popular Artists', hideActionWidget: false).launch(context, pageRouteAnimation: PageRouteAnimation.Slide);
          },
        ).paddingSymmetric(horizontal: 16),
        12.height,
        HorizontalList(
          itemCount: artistsFollowedList.length,
          spacing: 16,
          runSpacing: 0,
          padding: EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (context, index) {
            ArtistsFollowedListModel artistsFollowedListData = artistsFollowedList[index];
            return GestureDetector(
              onTap: () {
                ArtistDetailScreen(artistData: artistsFollowedListData).launch(context, pageRouteAnimation: PageRouteAnimation.Slide);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CachedImageWidget(
                    url: artistsFollowedListData.artistImg.validate(),
                    height: 80,
                    fit: BoxFit.cover,
                    width: 80,
                    radius: widget.radius ?? 100,
                  ),
                  SizedBox(
                    width: 78,
                    child: Marquee(
                      child: Text(
                        artistsFollowedListData.artistName.capitalizeFirstLetter(),
                        style: primaryTextStyle(size: 14, color: whiteColor),
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ).center(),
                  ).paddingTop(8)
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
