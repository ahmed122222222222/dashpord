import 'package:flutter/material.dart';
import 'package:resposive/view/widget/All%20Expenses/bodyallextensis.dart';

class CustomAllexpense extends StatelessWidget {
  const CustomAllexpense({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF7F9FA),
      body: BodyAllExpenses(),
    );
  }
}
