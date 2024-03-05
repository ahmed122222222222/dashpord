import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';

class Headerincome extends StatelessWidget {
  const Headerincome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xffF1F1F1))),
          child: Row(
            children: [
              Text(
                "Monthly",
                style: AppStyles.styleMedium16(context),
              ),
              const SizedBox(
                width: 18,
              ),
              const Icon(
                Icons.keyboard_arrow_down,
                size: 24,
                color: Color(0xff064061),
              )
            ],
          ),
        )
      ],
    );
  }
}
