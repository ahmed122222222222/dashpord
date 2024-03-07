import 'package:flutter/material.dart';
import 'package:resposive/model/TransactionModel.dart';
import 'package:resposive/view/widget/three/lasttiellasttrantion.dart';

class CardTransaction extends StatelessWidget {
  const CardTransaction( {
    super.key,
    required this.transactionModel,
  });
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListtielTransaction(
        transactionModel: transactionModel,
      ),
    );
  }
}
