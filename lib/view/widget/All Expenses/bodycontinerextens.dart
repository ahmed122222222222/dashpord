import 'package:flutter/material.dart';
import 'package:resposive/view/widget/All%20Expenses/Allextinseslistview.dart';
import 'package:resposive/view/widget/All%20Expenses/Header.dart';

class CustomBodyContinerAllExpenises extends StatefulWidget {
  const CustomBodyContinerAllExpenises({super.key});

  @override
  State<CustomBodyContinerAllExpenises> createState() =>
      _CustomBodyContinerAllExpenisesState();
}

class _CustomBodyContinerAllExpenisesState
    extends State<CustomBodyContinerAllExpenises> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeaer(),
        SizedBox(
          height: 30,
        ),
        AllextEnsiveListView(),
      ],
    );
  }
}
