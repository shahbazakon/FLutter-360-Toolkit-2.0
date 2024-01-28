import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../model/image_data_model.dart';
import '../../model/walkthrough_model.dart';

class WalkthroughComponent extends StatefulWidget {
  final WalkthroughModel data;
  final PageController? walkthroughPageController;
  WalkthroughComponent({this.walkthroughPageController, required this.data});

  State<WalkthroughComponent> createState() => WalkthroughComponentState();
}

class WalkthroughComponentState extends State<WalkthroughComponent> {
  List<ImageDataModel> latestmoviesList = getlatestMovies();
  int? currentIndex = 0;

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Text(widget.data.title!, textAlign: TextAlign.center, style: boldTextStyle(size: 22)),
            SizedBox(
              height: 32,
            ),
            Container(
              height: 350,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.data.walkthroughImage!), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(width: 4, color: Colors.white24)),
            )
          ],
        ),
      ),
    );
  }
}
