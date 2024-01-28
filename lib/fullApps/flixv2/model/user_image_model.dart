import '../utils/constants.dart';

class UserImageModel {
  String? name;
  String? username;
  String? imageName;
  int? followerscount;
  int? followingcount;

  UserImageModel({this.name, this.username, this.imageName, this.followerscount, this.followingcount});
}

List<UserImageModel> getUserDetails() {
  List<UserImageModel> userDetailsList = [];
  userDetailsList.add(UserImageModel(
    username: '@_rachel.sometimes',
    name: 'Foram Patel',
    imageName: USER_4,
    followerscount: 749,
    followingcount: 1299,
  ));
  userDetailsList.add(UserImageModel(
    username: '@neha_.307',
    name: 'Neha Parmar',
    imageName: USER_2,
    followerscount: 459,
    followingcount: 500,
  ));
  userDetailsList.add(UserImageModel(
    username: '@i_kmp13',
    name: 'Krishna Patel',
    imageName: USER_1,
    followerscount: 819,
    followingcount: 813,
  ));
  userDetailsList.add(UserImageModel(
    username: '@bhxkti12',
    name: 'Bhakti Thakar',
    imageName: USER_10,
    followerscount: 245,
    followingcount: 986,
  ));
  userDetailsList.add(UserImageModel(
    username: '@nximish20',
    name: 'Naimish Machhar',
    imageName: USER_8,
    followerscount: 692,
    followingcount: 527,
  ));
  userDetailsList.add(UserImageModel(
    username: '@cine_ayush',
    name: 'Ayush Solanki',
    imageName: USER_7,
    followerscount: 914,
    followingcount: 1234,
  ));
  userDetailsList.add(UserImageModel(
    username: '@rutvik05',
    name: 'Rutvik Patel',
    imageName: USER_6,
    followerscount: 1109,
    followingcount: 1200,
  ));
  userDetailsList.add(UserImageModel(
    username: '@parth_pedhadiya',
    name: 'Parth Patel',
    imageName: USER_9,
    followerscount: 498,
    followingcount: 779,
  ));
  userDetailsList.add(UserImageModel(
    username: '@sheya_machchhar',
    name: 'Shreya Machchhar',
    imageName: USER_4,
    followerscount: 329,
    followingcount: 330,
  ));
  userDetailsList.add(UserImageModel(
    username: '@275sakshipuvar',
    name: 'Sakshi Puvar',
    imageName: USER_5,
    followerscount: 590,
    followingcount: 399,
  ));

  return userDetailsList;
}
