import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/nftMarketPlace/utils/NMPCommon.dart';
import 'package:prokit_flutter/fullApps/nftMarketPlace/utils/NMPConstants.dart';

class NMPAboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: context.iconColor),
        centerTitle: true,
        title: Text('About', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Theme.of(context).textTheme.titleMedium!.color)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: commonCachedNetworkImage(
                  '$osImageBaseUrl/os_about.png',
                  height: 120,
                  width: 150,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Container(
              width: 250,
              child: Text(
                'We are building an open digital economy',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 350,
              padding: EdgeInsets.all(8),
              // color: Colors.yellow,
              child: Text(
                "ProKit – Biggest Flutter UI kit is the ultimate library of Flutter UI templates "
                "combined into a high-quality Flutter UI kit for Android/iOS developers. "
                "The collection consists of UI elements and styles based on Material Design Guidelines. "
                "With its clean and direct effect, this set of mixed App UI design easily becomes your "
                "standalone solution. Design different screens easily by customizing templates. "
                "Get this biggest Flutter UI kit, combine and edit any UI element, text, "
                "or image, save your time and efforts with these well-thought "
                "pre-designed elements and just launch your app.",
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              color: Theme.of(context).cardColor,
              child: MaterialButton(
                height: 50,
                color: Colors.blue,
                minWidth: context.w,
                child: Text('Read more', style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold)),
                onPressed: () {
                  // Navigator.pop(context);
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Terms of Service', style: TextStyle(fontSize: 14, color: Colors.blue)),
                SizedBox(width: 20),
                Icon(Icons.circle, color: Colors.grey, size: 6),
                SizedBox(width: 20),
                Text('Privacy Policy', style: TextStyle(fontSize: 14, color: Colors.blue)),
              ],
            ).paddingAll(16).paddingAll(16),
            Container(
              width: 150,
              child: Text('Version 2.1.6 Build 25', style: TextStyle(fontSize: 14, color: Colors.grey)),
            ),
            Text(' © 2018-21 Extra Networks, Inc', style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
