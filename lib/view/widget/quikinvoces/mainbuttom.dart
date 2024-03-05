import 'package:flutter/material.dart';

import '../../../core/utiles/styelse.dart';

// ignore: camel_case_types
class activebuttom extends StatelessWidget {
  const activebuttom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff4EB7F2),
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Text(
          "Send Money",
          style: AppStyles.styleSemiBold18(context),
        ),
      ),
    );
  }
}
