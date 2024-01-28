import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../components/app_scaffold.dart';
import '../../components/cached_image_widget.dart';
import '../../components/common_app_button.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../dashboard/dashboard_screen.dart';

class ChooseArtistsScreen extends StatefulWidget {
  @override
  _ChooseArtistsScreenState createState() => _ChooseArtistsScreenState();
}

class _ChooseArtistsScreenState extends State<ChooseArtistsScreen> {
  int selectedIndex = -1;

  List<String> imgList = [
    alan_walker_artists,
    tim_david_artists,
    marsh_mello_artists,
    akon_artists,
    alan_walker_artists,
    tim_david_artists,
    marsh_mello_artists,
    akon_artists,
    alan_walker_artists,
    tim_david_artists,
    marsh_mello_artists,
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Container(
        height: context.height(),
        width: context.width(),
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(left: 28, right: 16, top: 50, bottom: 100),
              child: Column(
                children: [
                  (context.height() * 0.05).toInt().height,
                  Text('Choose artists', style: boldTextStyle(size: 26, color: whiteColor)),
                  40.height,
                  AnimatedWrap(
                    runSpacing: 20,
                    itemCount: imgList.length,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          selectedIndex = index;
                          setState(() {});
                        },
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: boxDecorationWithRoundedCorners(boxShape: BoxShape.circle),
                          margin: EdgeInsets.only(
                              left: (index % 3 == 2)
                                  ? 96
                                  : (index % 3 == 1)
                                      ? 40
                                      : 0,
                              right: ((index % 3 != 2) && (index % 3 != 1) ? 40 : 0)),
                          child: Stack(
                            children: [
                              CachedImageWidget(
                                url: imgList[index],
                                height: 120,
                                fit: BoxFit.cover,
                                width: 120,
                                radius: 150,
                              ),
                              if (index == selectedIndex)
                                Positioned(
                                  child: Blur(
                                    blur: 0.5,
                                    width: 110,
                                    height: 110,
                                    borderRadius: radius(55),
                                    child: Container(
                                      width: 110,
                                      height: 110,
                                      alignment: Alignment.center,
                                      decoration: boxDecorationDefault(shape: BoxShape.circle, color: blurBlackColor.withOpacity(0.8)),
                                      child: Text('Guy Hawkins', style: secondaryTextStyle(color: whiteColor)),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              left: 16,
              right: 16,
              child: CommonAppButton(
                btnText: 'Done',
                onPressed: () {
                  DashBoardScreen().launch(context, pageRouteAnimation: PageRouteAnimation.Slide);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
