import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/themes/theme15/components/search_screen_card_component.dart';
import 'package:prokit_flutter/themes/theme15/utils/T15TextButton.dart';
import 'package:prokit_flutter/themes/theme15/utils/T15colors.dart';

import '../utils/T15model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          24.height,
          Row(
            children: [
              16.width,
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: context.cardColor,
                  hintText: "Search",
                  hintStyle: primaryTextStyle(color: Colors.grey.shade400),
                  constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 108),
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: Colors.grey.shade400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              16.width,
              Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.only(top: 16, bottom: 16),
                decoration: BoxDecoration(
                  color: context.cardColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.filter_list, color: primarycolor),
              ),
              16.width,
            ],
          ),
          Row(
            children: [
              16.width,
              Expanded(
                  child: Text(
                "Search History",
                style: boldTextStyle(),
              )),
              CommonTextButton(text: "See More"),
              16.width // Padding(
            ],
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            child: SearchScreenCardComponent(),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Wrap(
                runSpacing: 16,
                spacing: 16,
                children: List.generate(
                  petsModelList.length,
                  (index) => GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(16),
                      width: MediaQuery.of(context).size.width / 2 - 24,
                      decoration: BoxDecoration(color: context.cardColor, borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: petsModelList[index].backgroundcolor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Image.asset(
                                  petsModelList[index].imagePath,
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                            ),
                          ),
                          16.height,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    petsModelList[index].username,
                                    style: boldTextStyle(),
                                  ),
                                  8.height,
                                  Row(
                                    children: [
                                      Image.asset(
                                        "images/theme15/icons/location1.png",
                                        height: 13,
                                        width: 13,
                                        color: tertiarycolor,
                                      ),
                                      6.height,
                                      Text(
                                        petsModelList[index].location,
                                        style: boldTextStyle(size: 14),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
/*Expanded(
            child: GridView.builder(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
                primary: false,
                shrinkWrap: true,
                itemCount: petsModelList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 3,
                  childAspectRatio: 0.78,
                ),
                itemBuilder: (BuildContext Context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(16),
                        width: 220,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: petsModelList[index].backgroundcolor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Image.asset(
                                    petsModelList[index].imagePath,
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      petsModelList[index].username,
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                    8.height,
                                    Row(
                                      children: [
                                        Image.asset(
                                          "images/theme15/icons/location1.png",
                                          height: 13,
                                          width: 13,
                                          color: tertiarycolor,
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          petsModelList[index].location,
                                          style: secondaryTextStyle(size: 14),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),*/
