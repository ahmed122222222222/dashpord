import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';

class BodyHeaderExpensise extends StatelessWidget {
  const BodyHeaderExpensise({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
     Text("All Expenses",style: AppStyles.styleMedium20(context).copyWith(color: Color(0xff064061)),) ,
     Container(
       padding: const EdgeInsets.all(12),
       decoration: BoxDecoration(
         
         color: Colors.white,
         borderRadius: BorderRadius.circular(12),
         border: Border.all(color: Color(0xffF1F1F1))
       ),
       child: Row(
         children: [
           Text("Monthly",style: AppStyles.styleMedium16(context),),
           SizedBox(width: 18,),
           Icon(Icons.keyboard_arrow_down,size: 24,color: Color(0xff064061),)
         ],
       ),
     )
     ],
    );
  }
}
