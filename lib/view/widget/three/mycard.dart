import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/image.dart';

import 'package:resposive/view/widget/three/Listtielcard.dart';
import 'package:resposive/view/widget/three/twotext.dart';

class mycard extends StatelessWidget {
  const mycard({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(Assets.imageCardBackground)),
            color: const Color(0xff4EB7F2),
            borderRadius: BorderRadius.circular(12)),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Listtitelcard(),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Twotext(),
            ),
           Flexible(
              child: SizedBox(
                height: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
