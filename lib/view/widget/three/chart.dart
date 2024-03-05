import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartIncome extends StatefulWidget {
  const ChartIncome({super.key});

  @override
  State<ChartIncome> createState() => _ChartIncomeState();
}

class _ChartIncomeState extends State<ChartIncome> {
  int curentsection = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getchartdata()),
    );
  }

  getchartdata() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            curentsection = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              radius: curentsection == 0 ? 60.0 : 40.1,
              showTitle: false,
              value: 40,
              color: const Color(0xff1F8BC7)),
          PieChartSectionData(
              radius: curentsection == 1 ? 60.0 : 40.1,
              showTitle: false,
              value: 25,
              color: const Color(0xff4EB7F2)),
          PieChartSectionData(
              radius: curentsection == 2 ? 60.0 : 40.1,
              showTitle: false,
              value: 20,
              color: const Color(0xff064061)),
          PieChartSectionData(
              radius: curentsection == 3 ? 60.0 : 40.1,
              showTitle: false,
              value: 22,
              color: const Color(0xffE2DECD))
        ]);
  }
}
