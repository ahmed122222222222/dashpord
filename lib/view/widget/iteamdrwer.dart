import 'package:flutter/material.dart';
import 'package:resposive/model/Listtilemodel.dart';
import 'package:resposive/view/widget/activeandnotactive.dart';

class IteamDrwer extends StatelessWidget {
  const IteamDrwer({super.key, required this.model, required this.isactive});
  final Listtilemodel model;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: isactive ? Active(model: model) : NotActive(model: model),
    );
  }
}
