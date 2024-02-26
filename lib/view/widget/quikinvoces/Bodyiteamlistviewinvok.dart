import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive/core/utiles/styelse.dart';
import 'package:resposive/model/Listtiel.dart';

class Bodyiteamlistviewinvok extends StatelessWidget {
  const Bodyiteamlistviewinvok({
    super.key,
    required this.inputtyextformModel,
  });
  final InputtyextformModel inputtyextformModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(inputtyextformModel.img),
      title: Text(
        inputtyextformModel.titel,
        style: AppStyles.styleMedium16(context),
      ),
      subtitle: Text(
        inputtyextformModel.subtitel,
        style: AppStyles.styleRegular12(context),
      ),
    );
  }
}
