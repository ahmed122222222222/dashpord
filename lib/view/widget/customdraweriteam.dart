import 'package:flutter/material.dart';
import 'package:resposive/view/widget/bodycontinerdrwer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});


  @override
  Widget build(BuildContext context) {
  return Container(
          color: Colors.white,
          child: const BodyContiner(),
        );
  }
}
