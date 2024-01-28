import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/flixv2/model/filter_model.dart';
import 'package:prokit_flutter/fullApps/flixv2/screen/genere_screen.dart';
import 'package:prokit_flutter/fullApps/flixv2/utils/common_widgets.dart';

class FilterScreen extends StatefulWidget {
  State<FilterScreen> createState() => FilterScreenState();
}

class FilterScreenState extends State<FilterScreen> {
  List<FilterModel> filterItemList = getFilterItems();

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: backButton(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Filter',
                      style: boldTextStyle(size: 20),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Reset', style: secondaryTextStyle()),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                      visualDensity: VisualDensity.compact,
                    ),
                  ),
                ],
              ),
            ),
            Wrap(
              direction: Axis.vertical,
              alignment: WrapAlignment.center,
              children: List.generate(filterItemList.length, (index) => filterItemWidget(index)),
            )
          ],
        ),
      ),
    );
  }

  Widget filterItemWidget(int index) {
    FilterModel filterItem = filterItemList[index];
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GenreScreen()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(shape: BoxShape.circle, color: filterItem.color),
              child: Icon(filterItem.leadingIcon, color: Colors.white),
            ),
            SizedBox(width: 16),
            Expanded(child: Text(filterItem.filterTitle!, style: boldTextStyle())),
            Icon(Icons.arrow_forward_ios_rounded, size: 18, color: Colors.white60),
          ],
        ),
      ),
    );
  }
}
