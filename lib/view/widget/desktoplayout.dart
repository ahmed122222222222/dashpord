import 'package:flutter/material.dart';

import 'package:resposive/view/widget/customdraweriteam.dart';

class DeskTopLayOut extends StatelessWidget {
  const DeskTopLayOut({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
      ],
    );
  }
}
