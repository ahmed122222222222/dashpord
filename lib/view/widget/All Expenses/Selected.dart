import 'package:flutter/material.dart';
import 'package:resposive/model/Allexpensiseiteammodel.dart';
import 'package:resposive/view/widget/All%20Expenses/inactiveandactiveexitinese.dart';

class Selected extends StatelessWidget {
  final bool isative;
  final Allexpensiseiteammodel allexpensiseiteammodel;
  const Selected(
      {super.key, required this.isative, required this.allexpensiseiteammodel});
  @override
  Widget build(BuildContext context) {
    return isative
        ? Inactive(allexpensiseiteammodel: allexpensiseiteammodel)
        : actve(allexpensiseiteammodel: allexpensiseiteammodel, model: null);
  }
}
