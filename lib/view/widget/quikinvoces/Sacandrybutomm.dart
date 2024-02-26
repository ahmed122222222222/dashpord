import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';

class Sacandrybutomm extends StatelessWidget {
  const Sacandrybutomm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Text(
          "Add more details",
          style: AppStyles.styleSemiBold18(context)
              .copyWith(color: const Color(0xff4EB7F2)),
        ),
      ),
    );
  }
}
