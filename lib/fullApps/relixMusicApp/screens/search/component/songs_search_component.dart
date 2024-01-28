import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../components/cached_image_widget.dart';
import '../model/search_data_model.dart';

class SongsSearchComponent extends StatelessWidget {
  final List<SearchDataModel> getSongsSearchData = getSongList();

  @override
  Widget build(BuildContext context) {
    return AnimatedListView(
      itemCount: getSongsSearchData.length,
      listAnimationType: ListAnimationType.Slide,
      padding: EdgeInsets.only(top: 16),
      shrinkWrap: true,
      itemBuilder: (ctx, index) {
        SearchDataModel songSearchData = getSongsSearchData[index];
        return SettingItemWidget(
          title: songSearchData.titleName.validate(),
          titleTextColor: whiteColor,
          subTitle: songSearchData.subTitleName.validate(),
          leading: CachedImageWidget(url: songSearchData.img.validate(), height: 60, fit: BoxFit.cover, width: 60, radius: 8),
          trailing: Icon(Icons.more_vert, size: 20, color: whiteColor).onTap(() {
            //
          }),
        );
      },
    );
  }
}
