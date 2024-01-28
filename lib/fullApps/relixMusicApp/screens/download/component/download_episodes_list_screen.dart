import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../components/common_app_divider.dart';
import '../model/download_list_model.dart';
import 'download_item_widget.dart';

class DownloadEpisodesListScreen extends StatefulWidget {
  @override
  _DownloadEpisodesListScreenState createState() => _DownloadEpisodesListScreenState();
}

class _DownloadEpisodesListScreenState extends State<DownloadEpisodesListScreen> {
  List<DownloadSongListModel> episodeListData = getDownloadedEpisodesList();

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
        ListView.separated(
          itemCount: episodeListData.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(16),
          separatorBuilder: (context, index) => CommonAppDividerWidget(height: 30),
          itemBuilder: (ctx, index) {
            DownloadSongListModel data = episodeListData[index];
            return AnimatedItemWidget(child: DownloadItemWidget(modObj: data));
          },
        ),
      ],
    );
  }
}
