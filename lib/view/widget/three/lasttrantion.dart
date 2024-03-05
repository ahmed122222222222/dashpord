import 'package:flutter/material.dart';
import 'package:resposive/model/TransactionModel.dart';
import 'package:resposive/view/widget/three/headerlasttranstion.dart';
import 'package:resposive/view/widget/three/trantionlistview.dart';

class LastTransaction extends StatefulWidget {
  const LastTransaction({super.key});

  @override
  State<LastTransaction> createState() => _LastTransactionState();
}

class _LastTransactionState extends State<LastTransaction> {
  List mm = [
    TransactionModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022 ",
        price: "\$20,129",
        isActive: false),
    TransactionModel(
        title: "Landing Page project",
        date: "13 Apr, 2022 ",
        price: "\$20,129",
        isActive: true),
    TransactionModel(
        title: "Juni Mobile App project",
        date: "13 Apr, 2022 ",
        price: "\$20,129",
        isActive: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [const HeaderLastTransacion(), TransactionListview(mm: mm)],
      ),
    );
  }
}
