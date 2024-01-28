import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:prokit_flutter/integrations/utils/colors.dart';
import 'package:prokit_flutter/main/utils/AppWidget.dart';

class MonthlySale2Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MonthlySale2ScreenState();
}

class MonthlySale2ScreenState extends State<MonthlySale2Screen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: appBar(context, 'Monthly Sale Chart 2'),
      body: Container(
        height: 300,
        width: context.width() * 0.8,
        child: LineChart(
          sampleData1(),
          duration: Duration(milliseconds: 250),
          // swapAnimationDuration: Duration(milliseconds: 250),
        ),
      ).center(),
    );
  }

  LineChartData sampleData1() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
        handleBuiltInTouches: true,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 10,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 2:
                  return Text('SEPT', style: boldTextStyle(color: borderText));
                case 7:
                  return Text('OCT', style: boldTextStyle(color: borderText));
                case 12:
                  return Text('DEC', style: boldTextStyle(color: borderText));
              }
              return Text('', style: boldTextStyle(color: borderText));
            },
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 10,
            getTitlesWidget: (value, meta) {
              switch (value.toInt()) {
                case 1:
                  return Text('1m', style: boldTextStyle(color: borderText));
                case 2:
                  return Text('2m', style: boldTextStyle(color: borderText));
                case 3:
                  return Text('3m', style: boldTextStyle(color: borderText));
                case 4:
                  return Text('5m', style: boldTextStyle(color: borderText));
              }
              return Text('', style: boldTextStyle());
            },
          ),
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(
            color: monthChartRight,
            width: 4,
          ),
          left: BorderSide(
            width: 4,
            color: monthChartRight,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      minX: 0,
      maxX: 14,
      maxY: 4,
      minY: 0,
      lineBarsData: linesBarData1(),
    );
  }

  List<LineChartBarData> linesBarData1() {
    final lineChartBarData1 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 1.5),
        FlSpot(5, 1.4),
        FlSpot(7, 3.4),
        FlSpot(10, 2),
        FlSpot(12, 2.2),
        FlSpot(13, 1.8),
      ],
      isCurved: true,
      color: aquamarine,
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    final lineChartBarData2 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 2.8),
        FlSpot(7, 1.2),
        FlSpot(10, 2.8),
        FlSpot(12, 2.6),
        FlSpot(13, 3.9),
      ],
      isCurved: true,
      color: darkOrchid,
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
    );
    final lineChartBarData3 = LineChartBarData(
      spots: [
        FlSpot(1, 2.8),
        FlSpot(3, 1.9),
        FlSpot(6, 3),
        FlSpot(10, 1.3),
        FlSpot(13, 2.5),
      ],
      isCurved: true,
      color: deepSkyBlue,
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    return [
      lineChartBarData1,
      lineChartBarData2,
      lineChartBarData3,
    ];
  }
}
