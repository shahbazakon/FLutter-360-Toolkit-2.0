import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../model/actor_data_model.dart';

class ActorsBioComponent extends StatefulWidget {
  final ActorDataModel actorBio;

  ActorsBioComponent({required this.actorBio});

  State<ActorsBioComponent> createState() => ActorsBioComponentState();
}

class ActorsBioComponentState extends State<ActorsBioComponent> {
  String? defaultText;
  bool readMore = false;
  late String firstpart;
  late String nextpart;

  void initState() {
    super.initState();

    defaultText = widget.actorBio.about!;
    //getText(defaultText!);
    if (defaultText!.length > 250) {
      firstpart = defaultText!.substring(0, 250);
      nextpart = defaultText!.substring(250, defaultText!.length);
    } else {
      firstpart = defaultText!.substring(0, defaultText!.length);
      nextpart = '';
    }
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Wrap(
        runSpacing: 8,
        children: [
          Text(
            'Bio',
            style: boldTextStyle(size: 20),
          ),
          nextpart.isNotEmpty
              ? Wrap(
                  alignment: WrapAlignment.end,
                  children: [
                    Text(
                      readMore ? (firstpart + nextpart) : (firstpart + " ..."),
                      textAlign: TextAlign.justify,
                      style: secondaryTextStyle(size: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        readMore = !readMore;
                        setState(() {});
                      },
                      child: Text(
                        readMore ? 'Less' : 'More',
                        textAlign: TextAlign.left,
                        style: boldTextStyle(size: 12, color: Colors.red),
                      ),
                    ),
                  ],
                )
              : Text(
                  firstpart,
                  textAlign: TextAlign.justify,
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
        ],
      ),
    );
  }
}
