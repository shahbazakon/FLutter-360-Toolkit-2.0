import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/flixv2/model/activity_model.dart';

import '../../utils/common_widgets.dart';

class ActivityScreen extends StatefulWidget {
  State<ActivityScreen> createState() => ActivityScreenState();
}

class ActivityScreenState extends State<ActivityScreen> {
  List title = ['Today', 'This Week', 'This Month'];
  late List<ActivityModel> acitvityData;

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(isLeading: false, title: 'Activity'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              runSpacing: 32,
              children: List.generate(
                title.length,
                (index) {
                  return Wrap(
                    runSpacing: 16,
                    children: [
                      Text(title[index], style: boldTextStyle(size: 20)),
                      Wrap(
                        runSpacing: 16,
                        children: List.generate(
                          getActivity(index).length,
                          (i) {
                            return Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(defaultRadius),
                                color: context.cardColor,
                              ),
                              child: activityItems(index, i),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget activityItems(int index, int i) {
    acitvityData = getActivity(index);
    ActivityModel activity = acitvityData[i];
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: Colors.black26),
            color: Colors.white60,
            image: DecorationImage(image: AssetImage(activity.imageName!), fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(activity.name!, style: primaryTextStyle()),
              SizedBox(height: 4),
              Text('${activity.username!} ${activity.activity!}', style: secondaryTextStyle()),
            ],
          ),
        ),
        if (activity.follow)
          InkWell(
            onTap: () {
              activity.followValue = !activity.followValue;
              print(activity.followValue);
              setState(() {});
            },
            borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
            child: redirectionButtonContainer(
              title: activity.followValue ? 'Following' : 'Follow',
              color: Colors.red,
            ),
          ),
      ],
    );
  }
}
