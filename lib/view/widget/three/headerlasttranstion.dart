import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';

class HeaderLastTransacion extends StatelessWidget {
  const HeaderLastTransacion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:0.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Transaction History ",style: AppStyles.styleMedium20(context).copyWith(color: Color(0xff064061)),),
             Text("See all ",style: AppStyles.styleRegular16(context).copyWith(color: Color(0xff4EB7F2)),),
         
          ],
        ),
      ),
    );
  }
}
