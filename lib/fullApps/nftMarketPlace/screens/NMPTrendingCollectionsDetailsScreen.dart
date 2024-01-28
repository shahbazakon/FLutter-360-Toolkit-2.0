import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/nftMarketPlace/components/NMPNotableTrendingComponent.dart';
import 'package:prokit_flutter/fullApps/nftMarketPlace/utils/NMPConstants.dart';
import 'package:prokit_flutter/fullApps/nftMarketPlace/utils/NMPDataProvider.dart';

import '../utils/NMPCommon.dart';

class NMPTrendingCollectionsDetailsScreen extends StatefulWidget {
  final OSDataModel dataModel;

  NMPTrendingCollectionsDetailsScreen(this.dataModel);

  @override
  State<NMPTrendingCollectionsDetailsScreen> createState() => _NMPTrendingCollectionsDetailsScreenState();
}

class _NMPTrendingCollectionsDetailsScreenState extends State<NMPTrendingCollectionsDetailsScreen> {
  List<OSDataModel> trendingCollection = getTapTrendingCollection();
  String? s;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                commonCachedNetworkImage(
                  widget.dataModel.image!,
                  height: 300,
                  width: context.width(),
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 50,
                  left: 15,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Theme.of(context).cardColor,
                        alignment: Alignment.center,
                        child: Icon(Icons.arrow_back_ios, color: Theme.of(context).iconTheme.color),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(widget.dataModel.title!, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                        "ProKit – Biggest Flutter UI kit is the ultimate library of Flutter UI templates "
                        "combined into a high-quality Flutter UI kit for Android/iOS developers. The collection "
                        "consists of UI elements and styles based on Material Design Guidelines. With its clean "
                        "and direct effect, this set of mixed App UI design easily becomes your standalone solution.",
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 12)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('6.57k', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          Text('Items', style: TextStyle(color: Colors.grey, fontSize: 12)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('3.57k', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          Text('Owners', style: TextStyle(color: Colors.grey, fontSize: 12)),
                        ],
                      ),
                      Row(
                        children: [
                          commonCachedNetworkImage('$osImageBaseUrl/icons/os_ic_token.png', width: 20, height: 20, alignment: Alignment.topCenter, color: Theme.of(context).iconTheme.color),
                          Column(
                            children: [
                              Text('0.179', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              Text('Price', style: TextStyle(color: Colors.grey, fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          commonCachedNetworkImage('$osImageBaseUrl/icons/os_ic_token.png', width: 20, height: 20, alignment: Alignment.topCenter, color: Theme.of(context).iconTheme.color),
                          Column(
                            children: [
                              Text('332', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                              Text('Traded', style: TextStyle(color: Colors.grey, fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: context.iconColor),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1, color: context.dividerColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1, color: context.dividerColor),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(width: 1, color: context.dividerColor),
                            ),
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "Search items",
                            fillColor: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Wrap(
                    children: trendingCollection.map(
                      (data) {
                        return NMPNotableTrendingComponent(data);
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
