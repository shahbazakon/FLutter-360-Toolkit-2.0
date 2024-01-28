import 'package:flutter/material.dart';

class FilterModel {
  IconData? leadingIcon;
  String? filterTitle;
  Color? color;

  FilterModel({this.leadingIcon, this.filterTitle, this.color});
}

List<FilterModel> getFilterItems() {
  List<FilterModel> filterItemList = [];
  filterItemList
      .add(FilterModel(color: Colors.orange.shade600, leadingIcon: Icons.grid_view_rounded, filterTitle: 'Genre'));
  filterItemList.add(FilterModel(color: Colors.red, leadingIcon: Icons.calendar_month, filterTitle: 'Release Year'));
  filterItemList.add(FilterModel(color: Colors.green, leadingIcon: Icons.public, filterTitle: 'Country'));
  filterItemList.add(FilterModel(color: Colors.blue, leadingIcon: Icons.calendar_today, filterTitle: 'Age'));

  return filterItemList;
}
