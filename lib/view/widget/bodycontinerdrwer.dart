import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/image.dart';
import 'package:resposive/model/Listtilemodel.dart';
import 'package:resposive/view/widget/activeandnotactive.dart';
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
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: CustomListtile(
          data: 'Lekan Okeowo',
          data1: 'demo@gmail.com',
          image: Assets.imageAvatar3,
        ),
        ),
        
        drweriteamListview(Iteam: Iteam),
       SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          children: [
             const Expanded(child: SizedBox(
              height: 20,
             )),
       NotActive(model:   Listtilemodel(data: "seting", image: Assets.imageSettings)),
       NotActive(model:   Listtilemodel(data: "log out", image: Assets.imageLogout))
          ],
        ),
       )
      ],
    );
  }
}
