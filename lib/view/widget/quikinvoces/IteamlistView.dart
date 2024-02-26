import 'package:flutter/material.dart';
import 'package:resposive/model/Listtiel.dart';
import 'package:resposive/view/widget/quikinvoces/Bodyiteamlistviewinvok.dart';

class IteamlistView extends StatelessWidget {
  const IteamlistView({
    super.key,
    required this.inputtyextformModel,
  });
  final InputtyextformModel inputtyextformModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFAFAFA),
          borderRadius: BorderRadius.circular(8)),
      child: Bodyiteamlistviewinvok(
        inputtyextformModel: inputtyextformModel,
      ),
    );
  }
}
