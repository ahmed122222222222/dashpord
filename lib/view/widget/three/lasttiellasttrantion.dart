import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';
import 'package:resposive/model/TransactionModel.dart';

class ListtielTransaction extends StatelessWidget {
  const ListtielTransaction({
    super.key, required this.transactionModel,
  });
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(transactionModel.title,style: AppStyles.styleSemiBold16(context),) ,
      subtitle:Text(transactionModel.date,style: AppStyles.styleRegular16(context).copyWith(color: Color(0xffAAAAAA)),) ,
      trailing:Text(transactionModel.price,style: AppStyles.styleSemiBold20(context).copyWith(color: transactionModel.isActive ?Color(0xff7DD97B):Color(0xffF3735E)),) ,
    );
  }
}
