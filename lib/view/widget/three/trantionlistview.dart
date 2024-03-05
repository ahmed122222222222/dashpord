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
    return ListView.builder(
        shrinkWrap: true,
        itemCount: mm.length,
        itemBuilder: (context, index) => CardTransaction(
              transactionModel: mm[index],
            ));
  }
}
