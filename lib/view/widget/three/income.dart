import 'package:flutter/material.dart';
import 'package:resposive/model/Listtielincomemodel.dart';
import 'package:resposive/view/widget/three/Headerincome.dart';
import 'package:resposive/view/widget/three/Listtielincome.dart';
import 'package:resposive/view/widget/three/chart.dart';

class Income extends StatefulWidget {
  const Income({super.key});

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  List r = [
    ListTileincomeModel(
      color: const Color(0xff1F8BC7),
      rate: '40%',
      title: 'Design service',
    ),
    ListTileincomeModel(
      color: const Color(0xff4EB7F2),
      rate: '25%',
      title: 'Design product',
    ),
    ListTileincomeModel(
      color: const Color(0xff064061),
      rate: '20%',
      title: 'Product royalti',
    ),
    ListTileincomeModel(
      color: const Color(0xffE2DECD),
      rate: '22%',
      title: 'Other',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Headerincome(),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(child: ChartIncome()),
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                      child: ListView.builder(
                          itemCount: r.length,
                          itemBuilder: (context, index) {
                            return Listtielincome(l: r[index]);
                          }))
                ],
              ))
            ],
          ),
        )
      ],
    );
  }
}
