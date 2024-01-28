import '../../../utils/images.dart';

class NotificationModel {
  String? image;
  String? day;
  String? time;
  String? message;
  String? itemName;
  String? itemType;
  String? podcastTime;
  bool? isLike;

  NotificationModel({this.image, this.day, this.time, this.message, this.itemName, this.itemType, this.isLike, this.podcastTime});
}

List<NotificationModel> getNewNotificationList() {
  List<NotificationModel> tempNewNotification = [];

  tempNewNotification.add(
    NotificationModel(
      image: hall_of_fame,
      day: 'Today',
      time: '04:50 min',
      message: 'Hall of Fame',
      itemName: 'The Script',
      itemType: 'Single',
      isLike: false,
    ),
  );

  tempNewNotification.add(
    NotificationModel(
      image: heat_waves,
      day: 'Yesterday',
      time: '01:20 min',
      message: 'Heat waves',
      itemName: 'Glass Animals',
      itemType: 'Single',
      isLike: true,
    ),
  );

  return tempNewNotification;
}

List<NotificationModel> getEarlierNotificationList() {
  List<NotificationModel> tempEarlierNotification = [];

  tempEarlierNotification.add(
    NotificationModel(
      image: dear_investor_stay_still,
      time: '15 hrs ago',
      message: 'Dear Investor -Stay Still!',
      itemName: 'Finshots Daily',
      itemType: 'Episode',
      isLike: false,
      podcastTime: '20 min',
    ),
  );

  return tempEarlierNotification;
}

List<NotificationModel> getNewMusicNotificationList() {
  List<NotificationModel> tempNewMusicNotification = [];

  tempNewMusicNotification.add(
    NotificationModel(
      image: hall_of_fame,
      day: 'Today',
      time: '04:50 min',
      message: 'Hall of Fame',
      itemName: 'The Script',
      itemType: 'Single',
      isLike: false,
    ),
  );

  tempNewMusicNotification.add(
    NotificationModel(
      image: heat_waves,
      day: 'Yesterday',
      time: '01:20 min',
      message: 'Heat waves',
      itemName: 'Glass Animals',
      itemType: 'Single',
      isLike: true,
    ),
  );

  return tempNewMusicNotification;
}

List<NotificationModel> getEarlierMusicNotificationList() {
  List<NotificationModel> tempEarlierMusicNotification = [];

  tempEarlierMusicNotification.add(
    NotificationModel(
      image: savage_love,
      day: 'Yesterday',
      time: '01:20 min',
      message: 'Savage love',
      itemName: 'Jason Derulo',
      itemType: 'Single',
      isLike: false,
    ),
  );

  return tempEarlierMusicNotification;
}

List<NotificationModel> getNewPodcastsNotificationList() {
  List<NotificationModel> tempNewPodcastsNotification = [];

  tempNewPodcastsNotification.add(
    NotificationModel(
      image: life_lesson,
      time: '5 hrs ago',
      message: 'The secret to happy life-lessons from 8 de...',
      itemName: 'TED Talks Daily',
      itemType: 'Episode',
      isLike: false,
      podcastTime: '30 min',
    ),
  );

  return tempNewPodcastsNotification;
}

List<NotificationModel> getEarlierPodcastsNotificationList() {
  List<NotificationModel> tempEarlierPodcastsNotification = [];

  tempEarlierPodcastsNotification.add(
    NotificationModel(
      image: dear_investor_stay_still,
      time: '15 hrs ago',
      message: 'Dear Investor -Stay Still!',
      itemName: 'Finshots Daily',
      itemType: 'Episode',
      isLike: true,
      podcastTime: '20 min',
    ),
  );

  return tempEarlierPodcastsNotification;
}
