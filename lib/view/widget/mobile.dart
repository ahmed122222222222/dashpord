import 'package:flutter/material.dart';
import 'package:resposive/view/widget/All%20Expenses/bodyallextensis.dart';
import 'package:resposive/view/widget/three/Headerincome.dart';
import 'package:resposive/view/widget/three/Listtielincome.dart';
import 'package:resposive/view/widget/three/chart.dart';
import 'package:resposive/view/widget/three/mycardandlasttransantion.dart';

class Mobilelayout extends StatelessWidget {
  const Mobilelayout({
    super.key,
    required this.r,
  });

  final List r;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          const BodyAllExpenses(),
          const SizedBox(
            height: 24,
          ),
          const MycardAndTransaction(),
          const SizedBox(
            height: 24,
          ),
          const Headerincome(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(child: ChartIncome()),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .25,
                      child: ListView.builder(
                          itemCount: r.length,
                          itemBuilder: (context, index) {
                            return Listtielincome(l: r[index]);
                          }),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
