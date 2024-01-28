import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/actor_screens/actor_detail_screen.dart';

import 'package:prokit_flutter/fullApps/flixv2/utils/common_widgets.dart';

import '../../model/actor_data_model.dart';

class ActorsScreen extends StatefulWidget {
  final String? title;
  int? imagesOfIndex;

  ActorsScreen({this.title, this.imagesOfIndex});

  @override
  State<ActorsScreen> createState() => ActorsScreenState();
}

class ActorsScreenState extends State<ActorsScreen> {
  List<ActorDataModel> actorsImages = getActorsDetail();

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
          isLeading: true,
          onTap: () {
            finish(context);
          },
          title: 'Actors'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.favorite_rounded, color: Colors.pink.shade700),
                SizedBox(width: 8),
                Expanded(
                  child: Text('Popular Actors Of The Week', style: boldTextStyle()),
                ),
              ],
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 16,
              runSpacing: 20,
              children: List.generate(actorsImages.length, (index) {
                ActorDataModel data = actorsImages[index];
                return SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 24,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ActorDetailScreen(
                            actorData: actorsImages[index],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            data.imageName!,
                            height: 150,
                            width: MediaQuery.of(context).size.width / 2 - 32,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(defaultRadius),
                        ),
                        SizedBox(height: 8),
                        Text(data.title!)
                      ],
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 16),
            Row(children: [
              Icon(Icons.bar_chart, color: Colors.yellow.shade700),
              SizedBox(width: 8),
              Expanded(
                child: Text('Top Actors', style: boldTextStyle()),
              ),
            ]),
            SizedBox(height: 16),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: List.generate(actorsImages.length, (index) {
                ActorDataModel actorImage = actorsImages[index];
                return SizedBox(
                  width: MediaQuery.of(context).size.width / 4 - 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ActorDetailScreen(
                            actorData: actorsImages[index],
                            // actorImage: actorsImages[i],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                            child: Image.asset(actorImage.imageName!,
                                height: MediaQuery.of(context).size.height * 0.12,
                                width: MediaQuery.of(context).size.width / 4 - 24,
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(defaultRadius)),
                        SizedBox(height: 8),
                        Text(
                          actorImage.title!,
                          textAlign: TextAlign.center,
                          style: primaryTextStyle(size: 12),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
