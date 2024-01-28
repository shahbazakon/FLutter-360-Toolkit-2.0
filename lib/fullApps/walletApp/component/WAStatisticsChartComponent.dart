import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/fullApps/walletApp/utils/WAColors.dart';

class WAStatisticsChartComponent extends StatefulWidget {
  static String tag = '/WAStatisticsChartComponent';

  @override
  WAStatisticsChartComponentState createState() => WAStatisticsChartComponentState();
}

class WAStatisticsChartComponentState extends State<WAStatisticsChartComponent> {
  final Color leftBarColor = WAPrimaryColor;
  final Color rightBarColor = Colors.red;
  late final double width = 7;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    final barGroup1 = makeGroupData(0, 5, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 18, 5);
    final barGroup4 = makeGroupData(3, 20, 16);
    final barGroup5 = makeGroupData(4, 17, 6);
    final barGroup6 = makeGroupData(5, 19, 1.5);
    final barGroup7 = makeGroupData(6, 10, 1.5);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: EdgeInsets.only(top: 16, right: 16, left: 16),
      child: BarChart(
        BarChartData(
          maxY: 20,
          titlesData: FlTitlesData(
              show: true,
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 20,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 0:
                        return Text('Mn', style: secondaryTextStyle());
                      case 1:
                        return Text('Te', style: secondaryTextStyle());

                      case 2:
                        return Text('Wd', style: secondaryTextStyle());

                      case 3:
                        return Text('Tu', style: secondaryTextStyle());

                      case 4:
                        return Text('Fr', style: secondaryTextStyle());

                      case 5:
                        return Text('St', style: secondaryTextStyle());

                      case 6:
                        return Text('Sn', style: secondaryTextStyle());

                      default:
                        return Text('', style: secondaryTextStyle());
                    }
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 16,
                  reservedSize: 14,
                  getTitlesWidget: (value, meta) {
                    if (value == 0) {
                      return Text('100k', style: secondaryTextStyle());
                    } else if (value == 10) {
                      return Text('20k', style: secondaryTextStyle());
                    } else if (value == 19) {
                      return Text('25k', style: secondaryTextStyle());
                    } else if (value == 5) {
                      return Text('14k', style: secondaryTextStyle());
                    } else {
                      return Text('', style: secondaryTextStyle());
                    }
                  },
                ),
              )),
          borderData: FlBorderData(
            show: false,
          ),
          barGroups: showingBarGroups,
        ),
      ).center(),
    ).paddingAll(16).center();
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(toY: y1, color: leftBarColor, width: width),
        BarChartRodData(toY: y2, color: rightBarColor, width: width),
      ],
    );
  }
}
