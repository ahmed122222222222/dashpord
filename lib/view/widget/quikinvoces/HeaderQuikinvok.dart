import 'package:flutter/material.dart';
import 'package:resposive/core/utiles/styelse.dart';

class HeaderQuikinvok extends StatelessWidget {
  const HeaderQuikinvok({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleMedium20(context)
              .copyWith(color: const Color(0xff064061)),
        ),
        const Spacer(),
        const CircleAvatar(
            backgroundColor: Color(0xffFAFAFA),
            child: Icon(
              Icons.add,
              color: Color(0xff4EB7F2),
              size: 18,
            ))
      ],
    );
  }
}
