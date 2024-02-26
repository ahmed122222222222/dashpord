import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';

class Customtextformfiled extends StatelessWidget {
  const Customtextformfiled({
    super.key,
    required this.label,
  });
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: const Color(0xffFAFAFA),
          filled: true,
          label: Text(
            label,
            style: AppStyles.styleRegular16(context)
                .copyWith(color: const Color(0xffAAAAAA)),
          ),
          contentPadding: const EdgeInsets.all(20),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
            color: Color(
              0xffFAFAFA,
            ),
          ))),
    );
  }
}
