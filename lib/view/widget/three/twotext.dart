import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';

class Twotext extends StatelessWidget {
  const Twotext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "0918 8124 0042 8129",
          style:
              AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "12/20 -  124",
          style:
              AppStyles.styleRegular16(context).copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
