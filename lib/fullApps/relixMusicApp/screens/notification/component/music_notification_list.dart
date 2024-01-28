import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../components/common_app_divider.dart';
import '../model/notification_model.dart';
import 'notification_widget.dart';

class MusicNotificationList extends StatefulWidget {
  @override
  State<MusicNotificationList> createState() => _MusicNotificationListState();
}

class _MusicNotificationListState extends State<MusicNotificationList> {
  List<NotificationModel> newNotificationData = getNewMusicNotificationList();
  List<NotificationModel> earlierNotificationData = getEarlierMusicNotificationList();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('New', style: boldTextStyle(size: 18, color: whiteColor)),
        16.height,
        ListView.separated(
          itemCount: newNotificationData.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          separatorBuilder: (context, index) => CommonAppDividerWidget(height: 30),
          itemBuilder: (ctx, index) {
            NotificationModel data = newNotificationData[index];
            return NotificationWidget(modObj: data);
          },
        ),
        CommonAppDividerWidget(height: 30),
        Text('Earlier', style: boldTextStyle(size: 18, color: whiteColor)),
        16.height,
        ListView.separated(
          itemCount: earlierNotificationData.length,
          separatorBuilder: (context, index) => CommonAppDividerWidget(height: 30),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (ctx, index) {
            NotificationModel data = earlierNotificationData[index];
            return NotificationWidget(modObj: data);
          },
        ),
      ],
    );
  }
}
