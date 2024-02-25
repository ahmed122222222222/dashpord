import 'package:flutter/material.dart';
import 'package:resposive/view/widget/All%20Expenses/bodycontinerextens.dart';

class BodyAllExpenses extends StatelessWidget {
  const BodyAllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Padding(
          padding: EdgeInsets.all(20), child: CustomBodyContinerAllExpenises()),
    );
  }
}
