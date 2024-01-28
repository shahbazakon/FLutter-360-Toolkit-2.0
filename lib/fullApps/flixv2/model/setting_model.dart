import 'package:flutter/material.dart';

class SettingModel {
  IconData? leadingIcon;
  String? title;
  Widget? trailingIcon;

  SettingModel({this.leadingIcon, this.title, this.trailingIcon});
}

List<SettingModel> getSettings(int index, {bool? value, Function(bool newValue)? onChanged}) {
  List<SettingModel> setting = [];
  switch (index) {
    case 0:
      setting = getGeneralSettingList(onChanged: onChanged ?? (newValue) {}, value: value ?? false);
      break;
    case 1:
      setting = getCacheSettingList();
      break;
    case 2:
      setting = getOtherSettingList();
      break;
  }

  return setting;
}

List<SettingModel> getOtherSettingList() {
  List<SettingModel> otherSettingList = [];
  return otherSettingList;
}

List<SettingModel> getCacheSettingList({bool? value, Function(bool newValue)? onChanged}) {
  List<SettingModel> cacheSettingList = [];
  cacheSettingList.add(
      SettingModel(trailingIcon: customAdaptiveSwitch(value: value ?? false, onChanged: onChanged ?? (newValue) {})));
  return cacheSettingList;
}

List<SettingModel> getGeneralSettingList({bool? value, required Function(bool newValue) onChanged}) {
  List<SettingModel> generalSettingList = [];
  generalSettingList.add(SettingModel(
    leadingIcon: Icons.translate_rounded,
    title: 'Change Languages',
  ));
  generalSettingList.add(SettingModel(
    leadingIcon: Icons.wifi,
    title: 'Stream Quality',
  ));
  generalSettingList.add(SettingModel(
    leadingIcon: Icons.notifications,
    title: 'Notification',
    trailingIcon: customAdaptiveSwitch(value: value ?? false, onChanged: onChanged),
  ));
  generalSettingList.add(SettingModel(
    leadingIcon: Icons.notifications,
    title: 'Autoplay Videos',
    trailingIcon: customAdaptiveSwitch(value: value ?? false, onChanged: onChanged),
  ));

  return generalSettingList;
}

Switch customAdaptiveSwitch(
    {required bool value, required Function(bool newValue) onChanged, Color? activeColor, Color? activeTrackColor}) {
  return Switch.adaptive(
    value: value,
    onChanged: onChanged,
    activeColor: activeColor ?? Colors.white,
    activeTrackColor: activeTrackColor ?? Colors.red,
  );
}
