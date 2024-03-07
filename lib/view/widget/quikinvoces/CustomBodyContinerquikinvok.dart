import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';
import 'package:resposive/view/widget/quikinvoces/HeaderQuikinvok.dart';
import 'package:resposive/view/widget/quikinvoces/ListviewQuikivok.dart';
import 'package:resposive/view/widget/quikinvoces/Sacandrybutomm.dart';
import 'package:resposive/view/widget/quikinvoces/mainbuttom.dart';
import 'package:resposive/view/widget/quikinvoces/titelform.dart';

class CustomBodyContinerquikinvok extends StatelessWidget {
  const CustomBodyContinerquikinvok({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderQuikinvok(),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Latest Transaction",
            style: AppStyles.styleMedium16(context),
          ),
          const ListviewQuikivok(),
          const Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          const titelform(
            titel: 'Customer name',
            titel2: 'Customer Email',
            label1: 'Type customer name',
            label2: 'Type customer email',
          ),
          const SizedBox(
            height: 24,
          ),
          const titelform(
            titel: 'Item name',
            titel2: 'Item mount',
            label1: 'Type customer name',
            label2: 'USD',
          ),
          const SizedBox(
            height: 24,
          ),
          const Row(
            children: [
              Expanded(child: Sacandrybutomm()),
              SizedBox(
                width: 24,
              ),
              Expanded(child: activebuttom()),
            ],
          )
        ],
      ),
    );
  }
}
