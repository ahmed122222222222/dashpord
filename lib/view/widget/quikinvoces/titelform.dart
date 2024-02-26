import 'package:flutter/material.dart';
import 'package:resposive/view/widget/quikinvoces/Form.dart';

class titelform extends StatelessWidget {
  const titelform({
    super.key,
    required this.titel,
    required this.titel2,
    required this.label1,
    required this.label2,
  });
  final String titel, label1, titel2, label2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Formccc(
          titel: titel,
          label: label1,
        )),
        const SizedBox(
          width: 16,
        ),
        Expanded(
            child: Formccc(
          titel: titel2,
          label: label2,
        ))
      ],
    );
  }
}
