import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/workingApps/chatGPT/utils/images.dart';

class VoiceSearchComponent extends StatefulWidget {
  @override
  VoiceSearchComponentState createState() => VoiceSearchComponentState();
}

class VoiceSearchComponentState extends State<VoiceSearchComponent> {
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
    return Container(
      color: context.cardColor,
      width: context.width(),
      height: 120,
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(volume_json, fit: BoxFit.cover, height: 60, width: 120),
          ],
        ),
      ),
    );
  }
}
