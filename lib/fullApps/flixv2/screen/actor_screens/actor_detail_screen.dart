import 'package:flutter/material.dart';
import 'package:prokit_flutter/fullApps/flixv2/components/actor_screen_component/actors_profile_component.dart';
import 'package:prokit_flutter/fullApps/flixv2/components/actor_screen_component/actors_bio_component.dart';
import 'package:prokit_flutter/fullApps/flixv2/components/actor_screen_component/actors_gallary_component.dart';

import '../../components/actor_screen_component/actors_staring_in_component.dart';
import '../../model/actor_data_model.dart';

class ActorDetailScreen extends StatefulWidget {
  final ActorDataModel actorData;

  ActorDetailScreen({required this.actorData});

  State<ActorDetailScreen> createState() => ActorDetailScreenState();
}

class ActorDetailScreenState extends State<ActorDetailScreen> {
  List<ActorDataModel> actorData = getActorsDetail();
  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          runSpacing: 20,
          children: [
            ActorsProfileComponent(actorData: widget.actorData),
            ActorsBioComponent(actorBio: widget.actorData),
            ActorsGallaryComponent(actorImage: widget.actorData),
            ActorsStaringInComponent(),
          ],
        ),
      ),
    );
  }
}
