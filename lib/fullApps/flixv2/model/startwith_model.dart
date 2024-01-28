import 'package:flutter/material.dart';

class StartwithModel {
  String? title;
  String? subtitle;
  IconData? leadingIcon;
  IconData? trailingIcon;

  StartwithModel({this.title, this.subtitle, this.leadingIcon, this.trailingIcon});
}

List<StartwithModel> getStartWithList() {
  List<StartwithModel> list = [];

  list.add(StartwithModel(
    title: 'Mobile Number',
    subtitle: 'You can sign up/sign In With your mobile Number ',
    leadingIcon: Icons.call,
    trailingIcon: Icons.arrow_forward_ios_rounded,
  ));

  list.add(StartwithModel(
    title: 'Email',
    subtitle: 'You can sign up/sign In With your email address ',
    leadingIcon: Icons.email_rounded,
    trailingIcon: Icons.arrow_forward_ios_rounded,
  ));

  return list;
}
