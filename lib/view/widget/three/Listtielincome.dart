import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';
import 'package:resposive/model/Listtielincomemodel.dart';

class Listtielincome extends StatelessWidget {
  const Listtielincome({
    super.key,
    required this.l,
  });
  final ListTileincomeModel l;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      contentPadding: EdgeInsets.symmetric(horizontal: 9),
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(color: l.color, shape: OvalBorder()),
      ),
      title: Text(
        l.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        l.rate,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
