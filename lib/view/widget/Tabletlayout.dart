// ignore: file_names
import 'package:flutter/material.dart';
import 'package:resposive/model/Listtielincomemodel.dart';
import 'package:resposive/view/widget/customdraweriteam.dart';
import 'package:resposive/view/widget/mobile.dart';

class Tabletlayout extends StatefulWidget {
  const Tabletlayout({super.key});

  @override
  State<Tabletlayout> createState() => _TabletlayoutState();
}

class _TabletlayoutState extends State<Tabletlayout> {
  List r = [
    ListTileincomeModel(
      color: const Color(0xff1F8BC7),
      rate: '40%',
      title: 'Design service',
    ),
    ListTileincomeModel(
      color: const Color(0xff4EB7F2),
      rate: '25%',
      title: 'Design product',
    ),
    ListTileincomeModel(
      color: const Color(0xff064061),
      rate: '20%',
      title: 'Product royalti',
    ),
    ListTileincomeModel(
      color: const Color(0xffE2DECD),
      rate: '22%',
      title: 'Other',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21.0),
      child: Row(
        children: [
          const Expanded(child: CustomDrawer()),
          Expanded(child: Mobilelayout(r: r)),
        ],
      ),
    );
  }
}
