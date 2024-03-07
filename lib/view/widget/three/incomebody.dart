import 'package:flutter/material.dart';
import 'package:resposive/view/widget/three/Chartdetails.dart';
import 'package:resposive/view/widget/three/Incomedetails.dart';
import 'package:resposive/view/widget/three/chart.dart';

class Incomebody extends StatelessWidget {
  const Incomebody({
    super.key,
    required this.r,
  });

  final List r;

  @override
  Widget build(BuildContext context) {
    double width =MediaQuery.of(context).size.width;
    return width >=1200 && width<1750?chartde(): Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          flex: 2,
          child: ChartIncome()),
        Expanded(
          flex: 3,
            child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(child: incomedetails(r: r)))
          ],
        ))
      ],
    );
  }
}