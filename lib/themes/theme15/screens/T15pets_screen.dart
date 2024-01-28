import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/themes/theme15/components/pets_screen_components/pets_screen_appbar_components.dart';
import 'package:prokit_flutter/themes/theme15/components/pets_screen_components/pets_screen_details_card.dart';
import 'package:prokit_flutter/themes/theme15/components/pets_screen_components/pets_screen_owners_component.dart';
import 'package:prokit_flutter/themes/theme15/utils/T15comman.dart';

import '../../../main.dart';
import '../utils/T15colors.dart';

class PetsScreen extends StatelessWidget {
  const PetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(height: height + height / 4 - 40),
                Container(
                  alignment: Alignment.topCenter,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "images/theme15/pets_screen/pets_screen_image_1.jpg",
                    fit: BoxFit.cover,
                    height: height * 0.58,
                  ),
                ),
                Positioned(
                  top: height * 0.45,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: context.cardColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18),
                          child: PetsScreenOwnersComponent(owner: "Samantha", distance: "10KM", address: "Chicago"),
                        ),
                        Wrap(
                          spacing: 24,
                          children: [
                            PetsScreenDetailsCardComponents(color: Color(0xfffce5e0), gender: "Female", sex: "sex"),
                            PetsScreenDetailsCardComponents(color: Color(0xffeaf9e7), gender: "1 Years", sex: "Age"),
                            PetsScreenDetailsCardComponents(color: Colors.blue.shade50, gender: "10 Kg", sex: "Weight"),
                          ],
                        ),
                        20.height,
                        Container(
                          padding: EdgeInsets.all(16),
                          width: MediaQuery.of(context).size.width - 16,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 0.5,
                                spreadRadius: 0.2,
                                offset: Offset(1, 1),
                              ),
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 0.5,
                                spreadRadius: 0.2,
                                offset: Offset(0, 1),
                              )
                            ],
                            color: appStore.isDarkModeOn ? Colors.black12 : Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(36),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 0.5,
                                        spreadRadius: 0.2,
                                        offset: Offset(1, 1)),
                                    BoxShadow(
                                        color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2, offset: Offset(0, 1))
                                  ],
                                  image: DecorationImage(
                                    image: AssetImage("images/theme15/account_images/profile2.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              16.width,
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "John",
                                      style: boldTextStyle(),
                                    ),
                                    6.height,
                                    Text(
                                      "Privious Owner",
                                      style: style2,
                                    ),
                                    6.height,
                                    Row(
                                      children: [
                                        Image.asset(
                                          "images/theme15/icons/location.png",
                                          height: 15,
                                          width: 15,
                                          color: tertiarycolor,
                                        ),
                                        Text(
                                          "Lincolnwood",
                                          style: style2,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Wrap(
                                spacing: 8,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffbfdcf7),
                                      ),
                                      child: Image.asset(
                                        "images/theme15/icons/messenger.png",
                                        height: 20,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  10.height,
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      padding: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xfff8e5e4),
                                      ),
                                      child: Icon(
                                        Icons.call,
                                        size: 20,
                                        color: tertiarycolor,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        16.height,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Details',
                              textAlign: TextAlign.left,
                              style: boldTextStyle(size: 20),
                            ),
                            10.height,
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 32,
                              child: Text(
                                "Samantha is a dog that I have found on the side of the road 1 year ago he is now cheerful and active dog...",
                                textAlign: TextAlign.justify,
                                style: primaryTextStyle(),
                              ),
                            ),
                            12.height,
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: primarycolor,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 0.5,
                                            spreadRadius: 0.2,
                                            offset: Offset(1, 1)),
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 0.5,
                                            spreadRadius: 0.2,
                                            offset: Offset(0, 1)),
                                      ]),
                                  child: Image.asset(
                                    height: 30,
                                    width: 30,
                                    "images/theme15/icons/chat_icon.png",
                                    color: Colors.white,
                                  ),
                                ),
                                16.width,
                                AppButton(
                                  text: 'Adopt Now',
                                  textColor: Colors.white,
                                  color: primarycolor,
                                  onTap: () {},
                                ).expand(),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).viewPadding.top + 16,
                  width: MediaQuery.of(context).size.width - 32,
                  left: 16,
                  child: PetsScreenAppbarComponents(title: "Pet", rightIconImage: "images/theme15/icons/donation.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
