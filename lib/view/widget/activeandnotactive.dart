import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive/core/utiles/styelse.dart';
import 'package:resposive/model/Listtilemodel.dart';

class NotActive extends StatelessWidget {
  const NotActive({
    super.key,
    required this.model,
  });

  final Listtilemodel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      title: Text(
        model.data,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

class Active extends StatelessWidget {
  const Active({
    super.key,
    required this.model,
  });

  final Listtilemodel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(model.image),
      title: Text(
        model.data,
        style: AppStyles.styleBold16(context),
      ),
      trailing: Container(
        width: 3.7,
        color: Color(0xff4EB7F2),
      ),
    );
  }
}
