import 'package:flutter/material.dart';
import 'package:prokit_flutter/fullApps/flixv2/utils/common_widgets.dart';

class ProfileModel {
  IconData? leadingWidget;
  String? title;
  Widget? trailingWidget;

  ProfileModel({this.leadingWidget, this.title, this.trailingWidget});
}

List<ProfileModel> getActivityItems() {
  List<ProfileModel> activityItems = [];
  activityItems.add(
    ProfileModel(
      leadingWidget: Icons.bookmark_added,
      title: 'Bookmark List',
      trailingWidget: Text('23'),
    ),
  );
  activityItems.add(
    ProfileModel(
      leadingWidget: Icons.reviews,
      title: 'Reviews',
      trailingWidget: Text('12'),
    ),
  );
  activityItems.add(ProfileModel(
    leadingWidget: Icons.play_arrow_rounded,
    title: 'History',
    trailingWidget: trailingIcon(),
  ));

  return activityItems;
}

List<ProfileModel> getAccountItems() {
  List<ProfileModel> accountItems = [];
  accountItems.add(ProfileModel(
    leadingWidget: Icons.settings,
    title: 'Settings',
    trailingWidget: trailingIcon(),
  ));
  accountItems.add(ProfileModel(
    leadingWidget: Icons.monetization_on_rounded,
    title: 'My Subscription Plan',
    trailingWidget: trailingIcon(),
  ));
  accountItems.add(ProfileModel(
    leadingWidget: Icons.lock,
    title: 'Change Password',
    trailingWidget: trailingIcon(),
  ));
  accountItems.add(ProfileModel(
    leadingWidget: Icons.logout_rounded,
    title: 'Logout',
    trailingWidget: trailingIcon(),
  ));

  return accountItems;
}
