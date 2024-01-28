import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../components/cached_image_widget.dart';
import '../../library/playlist_detail_screen.dart';
import '../model/search_data_model.dart';

class PlayListsSearchComponent extends StatelessWidget {
  final List<SearchDataModel> getPlayListData = getPlayListsList();

  @override
  Widget build(BuildContext context) {
    return AnimatedWrap(
      spacing: 16,
      runSpacing: 16,
      listAnimationType: ListAnimationType.Slide,
      itemCount: getPlayListData.length,
      itemBuilder: (ctx, index) {
        SearchDataModel playListData = getPlayListData[index];
        return GestureDetector(
          onTap: () {
            hideKeyboard(context);
            PlaylistDetailScreen(playListData: playListData).launch(context, pageRouteAnimation: PageRouteAnimation.Slide);
          },
          child: Container(
            width: context.width() / 2 - 24,
            decoration: boxDecorationDefault(
              color: Colors.grey.withAlpha(25),
              borderRadius: radius(18),
              boxShadow: defaultBoxShadow(blurRadius: 0, shadowColor: Colors.black.withAlpha(20), spreadRadius: 0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CachedImageWidget(
                  url: playListData.img.validate(),
                  height: 130,
                  width: context.width(),
                  fit: BoxFit.cover,
                ).cornerRadiusWithClipRRect(18).paddingAll(10),
                Text(playListData.titleName.validate(), style: primaryTextStyle(color: whiteColor), maxLines: 2, overflow: TextOverflow.ellipsis).paddingAll(10),
              ],
            ),
          ),
        );
      },
    ).paddingOnly(left: 16, right: 16, top: 30);
  }
}
