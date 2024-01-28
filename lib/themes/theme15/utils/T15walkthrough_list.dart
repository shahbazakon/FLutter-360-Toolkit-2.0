import 'package:nb_utils/nb_utils.dart';

List<WalkThroughModelClass> walkThroughList() {
  List<WalkThroughModelClass> tempList = [];
  tempList.add(
    WalkThroughModelClass(
      title: 'Welcome to our app',
      subTitle: 'With our app you\'ll make life of our funny friends happier',
      image: 'images/theme15/walkthrough_images/walkthrough_image1.png',
    ),
  );
  tempList.add(
    WalkThroughModelClass(
      title: 'Make a new friend',
      subTitle: 'Here you can meet your dream friends and enjoy with them',
      image: 'images/theme15/walkthrough_images/walkthrough_image2.png',
    ),
  );
  tempList.add(
    WalkThroughModelClass(
      title: 'Find out your favorite pet close to you',
      subTitle: 'Join and discover your favorite pet in your locatity',
      image: 'images/theme15/walkthrough_images/walkthrough_image_4.png',
    ),
  );
  return tempList;
}
