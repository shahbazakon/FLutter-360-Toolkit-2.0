
import 'package:flutter/material.dart';
import 'package:prokit_flutter/themes/theme15/utils/T15colors.dart';

class Petsmodel {
  final String username;
  final String imagePath;
  final String location;
  final Color? backgroundcolor;
  bool isSelected;

  Petsmodel.PetsModel({
    required this.location,
    required this.username,
    required this.imagePath,
    this.backgroundcolor,
    this.isSelected = false,
  });
}

// List<Petsmodel> favPetsModel = [];

List<Petsmodel> petsModelList = [
  Petsmodel.PetsModel(
    location: "Berwyn(5KM)",
    username: "Charlie",
    imagePath: "images/theme15/pets_images/dog7.png",
    backgroundcolor: Colors.lightBlueAccent.shade100,
  ),
  Petsmodel.PetsModel(
    location: "Berwyn (5KM)",
    username: "Cooper",
    imagePath: "images/theme15/pets_images/dog6.png",
    backgroundcolor: secondarycolor,
  ),
  Petsmodel.PetsModel(
    location: "Berwyn (5KM)",
    username: "Max",
    imagePath: "images/theme15/pets_images/dog4.png",
    backgroundcolor: Colors.pinkAccent.shade100,
  ),
  Petsmodel.PetsModel(
    location: "Berwyn (5KM)",
    username: "Oliver",
    imagePath: "images/theme15/pets_images/dog5.png",
    backgroundcolor: Colors.lightBlueAccent.shade100,
  ),
  Petsmodel.PetsModel(
    location: "Berwyn (5KM)",
    username: "Milo",
    imagePath: "images/theme15/pets_images/dog8.png",
    backgroundcolor: secondarycolor,
  ),
  Petsmodel.PetsModel(
    location: "Berwyn (5KM)",
    username: "Buddy",
    imagePath: "images/theme15/pets_images/dog2.png",
    backgroundcolor: Colors.pinkAccent.shade100,
  ),
  Petsmodel.PetsModel(
    location: "Berwyn (5KM)",
    username: "Rocky",
    imagePath: "images/theme15/pets_images/dog3.png",
    backgroundcolor: Colors.lightBlueAccent.shade100,
  ),
];

class messageModel {
  final Color color;
  final String username;
  final String? unReedMessages;
  final String imagePath;
  final String lastSeen;

  messageModel({
    required this.lastSeen,
    required this.imagePath,
    required this.username,
    required this.color,
    this.unReedMessages,
  });
}

List<messageModel> messageCard = [
  messageModel(
    username: "Nimesh",
    color: Colors.greenAccent.shade400,
    imagePath: "images/theme15/account_images/profile2.png",
    unReedMessages: "2",
    lastSeen: "10min",
  ),
  messageModel(
    username: "Yogesh",
    color: Colors.greenAccent.shade400,
    imagePath: "images/theme15/account_images/profile3.png",
    unReedMessages: "3",
    lastSeen: "1min",
  ),
  messageModel(
    username: "Manish",
    color: Colors.greenAccent.shade400,
    imagePath: "images/theme15/account_images/profile4.png",
    unReedMessages: "1",
    lastSeen: "12min",
  ),
  messageModel(
    username: "Shyam",
    color: secondarycolor,
    imagePath: "images/theme15/account_images/profile2.png",
    unReedMessages: "2",
    lastSeen: "8min",
  ),
  messageModel(
    username: "Mohit",
    color: secondarycolor,
    imagePath: "images/theme15/account_images/profile5.png",
    unReedMessages: "10",
    lastSeen: "10min",
  ),
  messageModel(
    username: "Rohan",
    color: secondarycolor,
    imagePath: "images/theme15/account_images/profile2.png",
    unReedMessages: "12",
    lastSeen: "1hr",
  ),
  messageModel(
    username: "Rahul",
    color: secondarycolor,
    imagePath: "images/theme15/account_images/profile3.png",
    unReedMessages: "1",
    lastSeen: "1hr",
  ),
  messageModel(
    username: "Nimesh",
    color: secondarycolor,
    imagePath: "images/theme15/account_images/profile3.png",
    lastSeen: "2hr",
  ),
  messageModel(
    username: "Kinjal",
    color: secondarycolor,
    imagePath: "images/theme15/account_images/profile4.png",
    lastSeen: "2hr",
  ),
  messageModel(
    username: "Lokesh",
    color: secondarycolor,
    imagePath: "images/theme15/account_images/profile3.png",
    lastSeen: "2hr",
  ),
  messageModel(
    username: "Ram",
    color: secondarycolor,
    imagePath: "images/theme15/account_images/profile2.png",
    lastSeen: "3hr",
  ),
  messageModel(
    username: "Jay",
    color: secondarycolor,
    imagePath: "images/theme15/account_images/profile5.png",
    lastSeen: "8hr",
  ),
];
