import 'package:flutter/material.dart';

import 'package:resposive/view/widget/three/cardtranstion.dart';

class TransactionListview extends StatelessWidget {
  const TransactionListview({
    super.key,
    required this.mm,
  });

  final List mm;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: mm.map((e) => CardTransaction(transactionModel: e,)).toList(),
    );
     
  }
}
