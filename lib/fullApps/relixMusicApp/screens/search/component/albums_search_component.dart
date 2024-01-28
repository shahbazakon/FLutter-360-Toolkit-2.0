import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../components/cached_image_widget.dart';
import '../../library/album_detail_screen.dart';
import '../model/search_data_model.dart';

class AlbumsSearchComponent extends StatelessWidget {
  final List<SearchDataModel> getAlbumsListData = getAlbumsList();

  @override
  Widget build(BuildContext context) {
    return AnimatedWrap(
      spacing: 16,
      runSpacing: 16,
      listAnimationType: ListAnimationType.Slide,
      itemCount: getAlbumsListData.length,
      itemBuilder: (ctx, index) {
        SearchDataModel albumListData = getAlbumsListData[index];
        return GestureDetector(
          onTap: () {
            hideKeyboard(context);
            AlbumDetailScreen(albumListData: albumListData).launch(context, pageRouteAnimation: PageRouteAnimation.Slide);
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
                  url: albumListData.img.validate(),
                  height: 130,
                  width: context.width(),
                  fit: BoxFit.cover,
                ).cornerRadiusWithClipRRect(18).paddingAll(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Marquee(child: Text(albumListData.titleName.validate(), style: primaryTextStyle(color: whiteColor))),
                    6.height,
                    Marquee(child: Text(albumListData.subTitleName.validate(), style: secondaryTextStyle())),
                  ],
                ).paddingAll(10),
              ],
            ),
          ),
        );
      },
    ).paddingOnly(left: 16, right: 16, top: 30);
  }
}
