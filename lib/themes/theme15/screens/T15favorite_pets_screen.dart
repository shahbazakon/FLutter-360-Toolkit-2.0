import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/themes/theme15/components/pets_screen_components/pets_screen_appbar_components.dart';

import '../utils/T15colors.dart';
import '../utils/T15model.dart';

class FavoritePetsScreen extends StatefulWidget {
  FavoritePetsScreen({Key? key, this.addList}) : super(key: key);
  final int? addList;

  @override
  State<FavoritePetsScreen> createState() => _FavoritePetsScreenState();
}

class _FavoritePetsScreenState extends State<FavoritePetsScreen> {
  bool isRemoved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            PetsScreenAppbarComponents(
              title: "Favorite Pets",
              rightIconImage: "images/theme15/icons/two-dots.png",
            ),
            16.height,

            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Wrap(
                direction: Axis.vertical,
                spacing: 16,
                children: List.generate(petsModelList.length, (index) {
                  return Container(
                    width: MediaQuery.of(context).size.width - 32,
                    decoration: BoxDecoration(color: context.cardColor, borderRadius: BorderRadius.circular(16)),
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            150.width,
                            Container(
                              alignment: Alignment.centerRight,
                              padding: EdgeInsets.all(50),
                              decoration: BoxDecoration(
                                color: context.cardColor,
                                image: DecorationImage(
                                  image: AssetImage(
                                    petsModelList[index].imagePath,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 1,
                              child: GestureDetector(
                                onTap: () {
                                  petsModelList[index].isSelected = !petsModelList[index].isSelected;
                                  isRemoved = petsModelList[index].isSelected;
                                  setState(() {});
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: context.cardColor,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 0.5,
                                          spreadRadius: 1,
                                          offset: Offset(1, 1)),
                                      BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 0.5,
                                          spreadRadius: 1,
                                          offset: Offset(0, 1)),
                                    ],
                                  ),
                                  child: Image.asset(
                                    "images/theme15/icons/heart.png",
                                    height: 25,
                                    width: 25,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(petsModelList[index].username, style: boldTextStyle(size: 18)),
                            12.height,
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined, color: primarycolor, size: 20),
                                Text(petsModelList[index].location, style: secondaryTextStyle()),
                              ],
                            ),
                            14.height,
                            Wrap(
                              //direction: Axis.vertical,
                              spacing: 12,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.lightBlue[50],
                                    ),
                                    child: Image.asset("images/theme15/icons/messenger.png",
                                        height: 20, color: Colors.blue),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xfff8e5e4),
                                    ),
                                    child: Icon(
                                      Icons.call_outlined,
                                      size: 20,
                                      color: tertiarycolor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // 16.width,
                      ],
                    ),
                  );
                }),
              ),
            )

            // SizedBox(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height - 220,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(left: 60),
            //         child: Image.asset("images/theme15/pets_images/dog10.png"),
            //       ),
            //       24.height,
            //       RichText(
            //         text: TextSpan(
            //           text: "You have no favorite pets",
            //           style: boldTextStyle(size: 20),
            //           children: [
            //             TextSpan(
            //               text: " 🙁",
            //               style: boldTextStyle(size: 20),
            //             ),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
} /*if (petsModelList.any((element) => element.isSelected))*/
