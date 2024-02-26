import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:resposive/view/widget/quikinvoces/CustomBodyContinerquikinvok.dart';

// ignore: camel_case_types
class quikinvok extends StatelessWidget {
  const quikinvok({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Padding(
          padding: EdgeInsets.all(20), child: CustomBodyContinerquikinvok()),
    );
  }
}
 


// ignore: camel_case_types








