import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/image.dart';
import 'package:resposive/model/Listtiel.dart';
import 'package:resposive/view/widget/quikinvoces/IteamlistView.dart';

class ListviewQuikivok extends StatelessWidget {
  const ListviewQuikivok({
    super.key,
  });
  static List iteam = [
    InputtyextformModel(
        subtitel: "Madraniadi20@gmail",
        titel: "Madrani Andi",
        img: Assets.imageAvatar1),
    InputtyextformModel(
        subtitel: "Josh Nunito@gmail.com",
        titel: "Madrani Andi",
        img: Assets.imageAvatar2),
    InputtyextformModel(
        subtitel: "Josh Nunito@gmail.com",
        titel: "Madrani Andi",
        img: Assets.imageAvatar3),
    InputtyextformModel(
        subtitel: "Josh Nunito@gmail.com",
        titel: "Madrani Andi",
        img: Assets.imageAvatar1),
    InputtyextformModel(
        subtitel: "Josh Nunito@gmail.com",
        titel: "Madrani Andi",
        img: Assets.imageAvatar2),
    InputtyextformModel(
        subtitel: "Josh Nunito@gmail.com",
        titel: "Madrani Andi",
        img: Assets.imageAvatar3)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: 
      ListView.builder(
          itemCount: iteam.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => IntrinsicWidth(
                  child: IteamlistView(
                inputtyextformModel: iteam[index],
              ))),
    );
  }
}
