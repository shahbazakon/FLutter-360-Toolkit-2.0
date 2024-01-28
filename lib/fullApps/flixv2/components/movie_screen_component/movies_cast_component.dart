import 'package:flutter/material.dart';

import '../../model/actor_data_model.dart';
import '../../screen/actor_screens/actor_detail_screen.dart';
import '../../screen/actor_screens/actors_screen.dart';
import '../../utils/common_widgets.dart';

class MoviesCastComponent extends StatefulWidget {
  State<MoviesCastComponent> createState() => MoviesCastComponentState();
}

class MoviesCastComponentState extends State<MoviesCastComponent> {
  List<ActorDataModel> actorsImages = getActorsDetail();

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 8,
      children: [
        titleRowItem(
          title: 'Cast',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ActorsScreen(),
              ),
            );
          },
          isSeeAll: true,
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(left: 16, right: 16),
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 16,
            children: List.generate(actorsImages.length, (index) {
              ActorDataModel actorImage = actorsImages[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ActorDetailScreen(
                        actorData: actorsImages[index],
                      ),
                    ),
                  );
                },
                child: actorImageItem(imageName: actorImage.imageName!, name: actorImage.title!),
              );
            }),
          ),
        )
      ],
    );
  }
}
