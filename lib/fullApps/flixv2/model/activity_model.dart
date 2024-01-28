import '../utils/constants.dart';

class ActivityModel {
  String? imageName;
  String? name;
  String? username;
  String? activity;
  bool follow;
  bool followValue;

  ActivityModel(
      {this.imageName, this.name, this.username, this.activity, this.follow = false, this.followValue = false});
}

List<ActivityModel> getActivity(int index) {
  List<ActivityModel> activityList = [];
  switch (index) {
    case 0:
      activityList = getTodayActivityList();
      break;
    case 1:
      activityList = getWeeklyActivity();
      break;
    case 2:
      activityList = getMonthlyActivity();
      break;
  }
  return activityList;
}

List<ActivityModel> getTodayActivityList() {
  List<ActivityModel> todayActivityList = [];
  todayActivityList.add(
    ActivityModel(
      imageName: USER_4,
      name: 'Neha Parmar',
      username: '@neha._307',
      activity: 'has liked your post.',
    ),
  );
  todayActivityList.add(
    ActivityModel(
      imageName: USER_1,
      name: 'Foram Patel',
      username: '@_rachel.sometimes',
      activity: 'has mentioned you in their story.',
    ),
  );
  todayActivityList.add(
    ActivityModel(
      imageName: USER_8,
      name: 'Naimish Machchhar',
      username: '@nximish',
      activity: 'has liked your post.',
    ),
  );
  todayActivityList.add(
    ActivityModel(
      imageName: USER_5,
      name: 'Ayush Solanki',
      username: '@cine_ayush',
      activity: 'has posted in a while.',
    ),
  );
  return todayActivityList;
}

List<ActivityModel> getWeeklyActivity() {
  List<ActivityModel> weeklyActivityList = [];
  weeklyActivityList.add(
    ActivityModel(
      imageName: USER_11,
      name: 'Bhakti Thakar',
      username: '@bhxkti12',
      activity: 'has liked your review.',
    ),
  );
  weeklyActivityList.add(
    ActivityModel(
      imageName: USER_12,
      username: '@i_kmp134',
      name: 'Krishna Patel',
      activity: 'has mentioned you in their story.',
    ),
  );
  weeklyActivityList.add(
    ActivityModel(
      imageName: USER_9,
      name: 'Parth Patel',
      username: '@_parth.2211',
      activity: 'has liked your review.',
    ),
  );
  weeklyActivityList.add(
    ActivityModel(
      imageName: USER_3,
      name: 'Rutvik Patel',
      username: '@rutvik305',
      activity: 'has liked your review.',
    ),
  );
  weeklyActivityList.add(
    ActivityModel(
        imageName: USER_6,
        username: '@suarabh.mp4',
        name: 'Saurabh Chaudhari',
        activity: 'has started following you.',
        follow: true),
  );
  weeklyActivityList.add(
    ActivityModel(
      imageName: USER_8,
      name: 'Naimish MachChhar',
      username: '@nximish',
      activity: 'has replied to your comment.',
    ),
  );

  return weeklyActivityList;
}

List<ActivityModel> getMonthlyActivity() {
  List<ActivityModel> monthlyActivityList = [];
  monthlyActivityList.add(
    ActivityModel(
      imageName: USER_12,
      username: '@i_kmp134',
      name: 'Krishna Patel',
      activity: 'has replied to your comment.',
    ),
  );
  monthlyActivityList.add(
    ActivityModel(
      imageName: USER_4,
      name: 'Neha Parmar',
      username: '@neha._307',
      activity: "has replied to comment that you're tagged in.",
    ),
  );
  monthlyActivityList.add(
    ActivityModel(
      imageName: USER_12,
      username: '@i_kmp134',
      name: 'Krishna Patel',
      activity: 'has liked your post.',
    ),
  );

  monthlyActivityList.add(
    ActivityModel(
      imageName: USER_11,
      name: 'Bhakti Thakar',
      username: '@bhxkti12',
      activity: 'has liked your comment.',
    ),
  );
  monthlyActivityList.add(
    ActivityModel(
        imageName: USER_10,
        name: 'Shreya Machhar',
        username: '@shreya_machhar',
        activity: 'has started following you',
        follow: true),
  );
  monthlyActivityList.add(
    ActivityModel(
      imageName: USER_9,
      name: 'Parth Patel',
      username: '@_parth.2211',
      activity: 'has started following you.',
      follow: true,
    ),
  );
  monthlyActivityList.add(
    ActivityModel(
      imageName: USER_2,
      name: 'Nency Patel',
      username: '@nency405',
      activity: 'has liked your review',
    ),
  );
  return monthlyActivityList;
}
