import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/image.dart';
import 'package:resposive/model/Listtilemodel.dart';
import 'package:resposive/view/widget/customlisttitel.dart';
import 'package:resposive/view/widget/drweriteamlistview.dart';

class BodyContiner extends StatefulWidget {
  const BodyContiner({super.key});

  @override
  State<BodyContiner> createState() => _BodyContinerState();
}

class _BodyContinerState extends State<BodyContiner> {
  // ignore: non_constant_identifier_names
  List Iteam = [
    Listtilemodel(data: "Dashboard", image: Assets.imageDashboard),
    Listtilemodel(data: "My Transaction", image: Assets.imageMyTransctions),
    Listtilemodel(data: "Statistics", image: Assets.imageStatistics),
    Listtilemodel(data: "Wallet Account", image: Assets.imageWalletAccount),
    Listtilemodel(data: "My Investments", image: Assets.imageMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomListtile(
          data: 'Lekan Okeowo',
          data1: 'demo@gmail.com',
          image: Assets.imageAvatar3,
        ),
        const SizedBox(
          height: 8,
        ),
        drweriteamListview(Iteam: Iteam)
      ],
    );
  }
}
