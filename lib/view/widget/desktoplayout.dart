import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposive/core/utiles/image.dart';
import 'package:resposive/core/utiles/styelse.dart';
import 'package:resposive/model/TransactionModel.dart';

import 'package:resposive/view/widget/All%20Expenses/allextenses.dart';

import 'package:resposive/view/widget/customdraweriteam.dart';
import 'package:resposive/view/widget/three/Mycardsection.dart';

class DeskTopLayOut extends StatelessWidget {
  const DeskTopLayOut({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(
          width:24,
        ),
        Expanded(flex: 3, child: CustomAllexpense()),
          SizedBox(
          width: 24,
        ),
        Expanded(flex: 1, child: MycardAndTransaction())
      ],
    );
  }
}
class MycardAndTransaction extends StatelessWidget {
  const MycardAndTransaction({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Padding(
          padding: EdgeInsets.all(20), 
          
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mycardSection(),
              Divider(color: Color(0xffF1F1F1),height: 40,),
              LastTransaction()
            ],
          ) ),
    );
  }
}
class LastTransaction extends StatefulWidget {
  const LastTransaction({super.key});

  @override
  State<LastTransaction> createState() => _LastTransactionState();
}

class _LastTransactionState extends State<LastTransaction> {
   List mm=[TransactionModel(title: "Cash Withdrawal", date: "13 Apr, 2022 ", price: "\$20,129", isActive: false),
   TransactionModel(title: "Landing Page project", date: "13 Apr, 2022 ", price: "\$20,129", isActive: true),
   TransactionModel(title: "Juni Mobile App project", date: "13 Apr, 2022 ", price: "\$20,129", isActive: true)
   ];

  @override
  Widget build(BuildContext context) {
   return   Padding(
     padding:const EdgeInsets.symmetric(horizontal: 8),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      const HeaderLastTransacion(),
        TransactionListview(mm: mm)
      ],
     ),
   );
  }
}

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
      itemBuilder: (context,index)=> CardTransaction(transactionModel: mm[index],));
  }
}

class CardTransaction extends StatelessWidget {
  const CardTransaction({
    super.key, required this.transactionModel,
  });
final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      
    color: const Color(0xffFAFAFA),  
    shape: RoundedRectangleBorder(
      
      borderRadius: BorderRadius.circular(12)
    ),
    child: ListtielTransaction(transactionModel: transactionModel,),
    );
  }
}

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

class HeaderLastTransacion extends StatelessWidget {
  const HeaderLastTransacion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Transaction History ",style: AppStyles.styleMedium20(context).copyWith(color: Color(0xff064061)),),
           Text("See all ",style: AppStyles.styleRegular16(context).copyWith(color: Color(0xff4EB7F2)),),
       
        ],
      ),
    );
  }
}

