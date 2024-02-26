import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';
import 'package:resposive/view/widget/quikinvoces/Customtextformfiled.dart';

class Formccc extends StatelessWidget {
  const Formccc({super.key, required this.titel, required this.label});
  final String titel, label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titel,
          style: AppStyles.styleBold16(context)
              .copyWith(color: const Color(0xff064061)),
        ),
        const SizedBox(
          height: 12,
        ),
        Customtextformfiled(
          label: label,
        )
      ],
    );
  }
}
