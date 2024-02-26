import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposive/model/Allexpensiseiteammodel.dart';

class Headeriteam extends StatelessWidget {
  const Headeriteam({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: CircleAvatar(
              backgroundColor: const Color(0xff60BEF3),
              child: Center(
                  child: SvgPicture.asset(
                img,
                color: Colors.white,
              ))),
        ),
        const Spacer(),
        const Icon(
          Icons.keyboard_arrow_right,
          color: Colors.white,
        )
      ],
    );
  }
}
// ignore: camel_case_types

class HeaderActiveieam extends StatelessWidget {
  const HeaderActiveieam({
    super.key,
    required this.allexpensiseiteammodel,
  });

  final Allexpensiseiteammodel allexpensiseiteammodel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: CircleAvatar(
              backgroundColor: const Color(0xffFAFAFA),
              child:
                  Center(child: SvgPicture.asset(allexpensiseiteammodel.img))),
        ),
        const Spacer(),
        const Icon(
          Icons.keyboard_arrow_right,
          color: Colors.black,
        )
      ],
    );
  }
}
