import 'package:flutter/material.dart';
import 'package:resposive/view/widget/three/Listtielincome.dart';

class incomedetails extends StatelessWidget {
  const incomedetails({
    super.key,
    required this.r,
  });

  final List r;

  @override
  Widget build(BuildContext context) {
    return  Column(
      
      children:r.map((e) => Listtielincome(l: e)).toList() ,
    );
    
    
  }
}
