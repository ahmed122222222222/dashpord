import 'package:flutter/material.dart';

import 'package:resposive/view/widget/All%20Expenses/allextenses.dart';

import 'package:resposive/view/widget/customdraweriteam.dart';

class DeskTopLayOut extends StatelessWidget {
  const DeskTopLayOut({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: CustomAllexpense())
      ],
    );
  }
}
