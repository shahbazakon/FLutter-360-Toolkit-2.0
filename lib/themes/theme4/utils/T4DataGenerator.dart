import 'package:prokit_flutter/themes/theme4/models/T4Models.dart';
import 'package:prokit_flutter/themes/theme4/utils/T4Images.dart';

import 'T4Colors.dart';
import '../../../main/utils/AppConstant.dart';

List<T4NewsModel> getList1Data() {
  List<T4NewsModel> list = [];
  var model1 = T4NewsModel();
  model1.name = "Life Speed Racer";
  model1.info = "7th aug- 3 min read";
  model1.image = t4_img9;
  model1.otherinfo = ProKitSoLongText;

  var model2 = T4NewsModel();
  model2.name = "Move The World";
  model2.info = "7th aug- 3 min read";
  model2.image = t4_img8;
  model2.otherinfo = ProKitSoLongText;

  var model3 = T4NewsModel();
  model3.name = "Piece Of Pie";
  model3.info = "7th aug- 3 min read";
  model3.image = t4_img6;
  model3.otherinfo = ProKitSoLongText;

  var model4 = T4NewsModel();
  model4.name = "The Addams Family";
  model4.info = "7th aug- 3 min read";
  model4.image = t4_img5;
  model4.otherinfo = ProKitSoLongText;

  var model5 = T4NewsModel();
  model5.name = "Life Speed Racer";
  model5.info = "7th aug- 3 min read";
  model5.image = t4_img2;
  model5.otherinfo = ProKitSoLongText;

  list.add(model1);
  list.add(model3);
  list.add(model2);
  list.add(model4);
  list.add(model5);
  list.add(model5);
  list.add(model1);
  list.add(model3);
  list.add(model2);
  list.add(model4);
  list.add(model5);
  list.add(model5);
  return list;
}

List<T4NewsModel> getCategoryData() {
  List<T4NewsModel> list = [];
  var model1 = T4NewsModel();
  model1.category = "World";
  model1.color = t4_cat1;

  var model2 = T4NewsModel();
  model2.category = "Politics";
  model2.color = t4_cat2;
  var model3 = T4NewsModel();
  model3.category = "Tech";
  model3.color = t4_cat3;
  var model4 = T4NewsModel();
  model4.category = "Sports";
  model4.color = t4_cat4;
  var model5 = T4NewsModel();
  model5.category = "Science";
  model5.color = t4_cat5;

  list.add(model1);
  list.add(model2);
  list.add(model3);
  list.add(model4);
  list.add(model5);
  list.add(model1);
  list.add(model2);
  list.add(model3);
  list.add(model4);
  list.add(model5);
  return list;
}

List<T4NewsModel> getList2Data() {
  List<T4NewsModel> list = [];
  var model1 = T4NewsModel();
  model1.name = "Life Speed Racer";
  model1.info = "7th aug- 3 min read";
  model1.image = t4_img8;

  var model2 = T4NewsModel();
  model2.name = "Life Speed Racer";
  model2.info = "7th aug- 3 min read";
  model2.image = t4_img10;

  var model3 = T4NewsModel();
  model3.name = "Life Speed Racer";
  model3.info = "7th aug- 3 min read";
  model3.image = t4_img5;

  list.add(model2);
  list.add(model3);
  list.add(model1);
  list.add(model2);
  list.add(model3);
  list.add(model1);
  list.add(model2);
  list.add(model3);
  list.add(model1);
  return list;
}

List<T4NewsModel> getDashboardData() {
  List<T4NewsModel> list = [];
  var model1 = T4NewsModel();
  model1.name = "Life Speed Racer";
  model1.info = "7th aug- 3 min read";
  model1.image = t4_img2;

  var model2 = T4NewsModel();
  model2.name = "Life Speed Racer";
  model2.info = "7th aug- 3 min read";
  model2.image = t4_img1;

  var model3 = T4NewsModel();
  model3.name = "Life Speed Racer";
  model3.info = "7th aug- 3 min read";
  model3.image = t4_img_3;

  var model4 = T4NewsModel();
  model4.name = "Life Speed Racer";
  model4.info = "7th aug- 3 min read";
  model4.image = t4_img5;

  var model5 = T4NewsModel();
  model5.name = "Life Speed Racer";
  model5.info = "7th aug- 3 min read";
  model5.image = t4_img6;

  var model6 = T4NewsModel();
  model6.name = "Life Speed Racer";
  model6.info = "7th aug- 3 min read";
  model6.image = t4_img4;

  list.add(model1);
  list.add(model2);
  list.add(model3);
  list.add(model4);
  list.add(model6);
  list.add(model5);
  list.add(model1);
  list.add(model2);
  list.add(model3);
  list.add(model4);
  list.add(model6);
  list.add(model5);
  list.add(model1);
  list.add(model2);
  list.add(model3);
  list.add(model4);
  list.add(model6);
  list.add(model5);
  return list;
}
