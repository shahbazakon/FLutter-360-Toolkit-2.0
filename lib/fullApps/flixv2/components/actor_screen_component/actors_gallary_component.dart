import 'package:flutter/material.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/gallary_screen.dart';
import 'package:prokit_flutter/fullApps/flixv2/utils/common_widgets.dart';

import '../../model/actor_data_model.dart';

class ActorsGallaryComponent extends StatefulWidget {
  final ActorDataModel actorImage;

  ActorsGallaryComponent({required this.actorImage});

  State<ActorsGallaryComponent> createState() => ActorsGallaryComponentState();
}

class ActorsGallaryComponentState extends State<ActorsGallaryComponent> {
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
          isSeeAll: true,
          title: 'Gallery',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => GallaryScreen(actorGallary: widget.actorImage),
              ),
            );
          },
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Wrap(
            spacing: 16,
            children: List.generate(widget.actorImage.imageList!.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => GallaryScreen(
                        actorGallary: widget.actorImage,
                      ),
                    ),
                  );
                },
                child: Container(
                  width: 88,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          widget.actorImage.imageList![index],
                          height: 100,
                          width: 88,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        )
      ],
    );
  }
} /**/
