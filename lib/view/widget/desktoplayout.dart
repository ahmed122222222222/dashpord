


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



import 'package:resposive/view/widget/All%20Expenses/allextenses.dart';

import 'package:resposive/view/widget/customdraweriteam.dart';
import 'package:resposive/view/widget/three/income.dart';
import 'package:resposive/view/widget/three/mycardandlasttransantion.dart';

class DeskTopLayOut extends StatelessWidget {
  const DeskTopLayOut({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 4,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
               hasScrollBody: false,
                child: Row(
            children: [
                Expanded(flex: 3, child: CustomAllexpense()),
          SizedBox(
            width: 24,
          ),
          Expanded(flex: 1, child: incomeandcard())
            ],
          ),
              )
            ],
          )
        )
      ],
    );
  }
}

// ignore: camel_case_types
class incomeandcard extends StatelessWidget {
  const incomeandcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MycardAndTransaction(),
        SizedBox(height: 24,),
        Expanded(child: Income())
      ],
    );
  }
}








