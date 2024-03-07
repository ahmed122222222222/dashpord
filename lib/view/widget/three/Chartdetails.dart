import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';

// ignore: camel_case_types
class chartde extends StatefulWidget {
  const chartde({super.key});
  @override
  State<chartde> createState() => _chartdeState();
}

// ignore: camel_case_types
class _chartdeState extends State<chartde> {
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
            titlePositionPercentageOffset: curentsection==0 ?1.1:null,
            titleStyle: AppStyles.styleSemiBold16(context).copyWith(color:curentsection==0?null : Colors.white),
              title: curentsection ==0?"Design service": "40%",
              radius: curentsection == 0 ? 60.0 : 40.1,
              
              value: 40,
              color: const Color(0xff1F8BC7)),
          PieChartSectionData(
             titlePositionPercentageOffset: curentsection==1?1.9:null,
            titleStyle: AppStyles.styleSemiBold16(context).copyWith(color:curentsection==1?null : Colors.white),
              title: curentsection ==1?"Design service": "40%",
              radius: curentsection == 1 ? 60.0 : 40.1,
             
              value: 25,
              color: const Color(0xff4EB7F2)),
          PieChartSectionData(
             titlePositionPercentageOffset: curentsection==2?2:null,
            titleStyle: AppStyles.styleSemiBold16(context).copyWith(color:curentsection==2?null : Colors.white),
              title: curentsection ==2?"Design service": "40%",
              radius: curentsection == 2 ? 60.0 : 40.1,
             
              value: 20,
              color: const Color(0xff064061)),
          PieChartSectionData(
             titlePositionPercentageOffset: curentsection==3 ?1.1:null,
            titleStyle: AppStyles.styleSemiBold16(context).copyWith(color:curentsection==3?null : Colors.white),
              title: curentsection ==3?"Design service": "40%",
              radius: curentsection == 3 ? 60.0 : 40.1,
              
              value: 22,
              color: const Color(0xffE2DECD))
        ]);
  }
  }
