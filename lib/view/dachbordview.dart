import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/Adaptiveui.dart';
import 'package:resposive/view/widget/desktoplayout.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveUi(
          MobileLauyOut: (context) => SizedBox(),
          TabletLayOut: (context) => SizedBox(),
          DeskTopLayOut: (context) => const DeskTopLayOut()),
    );
  }
}
