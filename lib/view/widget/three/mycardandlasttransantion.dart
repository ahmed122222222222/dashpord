import 'package:flutter/material.dart';

import 'package:resposive/view/widget/three/Mycardsection.dart';
import 'package:resposive/view/widget/three/lasttrantion.dart';

class MycardAndTransaction extends StatelessWidget {
  const MycardAndTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mycardSection(),
              Divider(
                color: Color(0xffF1F1F1),
                height: 40,
              ),
              LastTransaction()
            ],
          )),
    );
  }
}
