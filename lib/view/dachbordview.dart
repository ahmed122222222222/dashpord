import 'package:flutter/material.dart';

import 'package:resposive/core/utiles/Adaptiveui.dart';
import 'package:resposive/model/Listtielincomemodel.dart';

import 'package:resposive/view/widget/Tabletlayout.dart';
import 'package:resposive/view/widget/customdraweriteam.dart';

import 'package:resposive/view/widget/desktoplayout.dart';
import 'package:resposive/view/widget/mobile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   GlobalKey<ScaffoldState> globalKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: MediaQuery.of(context).size.width <800?AppBar(
        leading: IconButton(onPressed: () { 
           globalKey.currentState!.openDrawer();     
      
         }, icon: Icon(Icons.menu),),
      ):null,
      drawer: MediaQuery.of(context).size.width <800?CustomDrawer():null,
      body: AdaptiveUi(
          MobileLauyOut: (context) => Mobilelayout(
                r: [
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
                ],
              ),
          TabletLayOut: (context) => const Tabletlayout(),
          DeskTopLayOut: (context) => const DeskTopLayOut()),
    );
  }
}
