import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/flixv2/model/image_data_model.dart';
import 'package:prokit_flutter/fullApps/flixv2/utils/common_widgets.dart';

class MovieBannerComponent extends StatefulWidget {
  State<MovieBannerComponent> createState() => MovieBannerComponentState();
}

class MovieBannerComponentState extends State<MovieBannerComponent> {
  List<ImageDataModel> latestmoviesList = getlatestMovies();

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int indexOfRandomComponent = Random().nextInt(latestmoviesList.length);
    ImageDataModel movieImage = latestmoviesList[indexOfRandomComponent];
    return Container(
      height: 180,
      margin: EdgeInsets.only(left: 16, right: 16),
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: context.cardColor),
      child: Row(
        children: [
          SizedBox(width: 8),
          ClipRRect(
            child: Image.asset(
              movieImage.imageName!,
              height: 160,
              width: 100,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Season $indexOfRandomComponent',
                style: secondaryTextStyle(size: 16),
              ),
              Text(
                movieImage.title!,
                style: boldTextStyle(size: 22),
              ),
              Text(
                "${movieImage.genere!.join(" · ")}",
                style: secondaryTextStyle(),
              ),
              Row(
                children: [
                  customFloatingButton(paddingValue: 4),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.45),
                  Wrap(
                    spacing: 4,
                    runAlignment: WrapAlignment.center,
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        color: Colors.yellow.shade700,
                        size: 14,
                      ),
                      Text(
                        movieImage.ratings!,
                        textAlign: TextAlign.center,
                        style: secondaryTextStyle(size: 12),
                      ),
                    ],
                  ).expand(),
                ],
              )
            ],
          ).expand(),
        ],
      ),
    );
  }
}
