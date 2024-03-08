import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resposive/core/utiles/styelse.dart';
import 'package:resposive/model/Allexpensiseiteammodel.dart';
import 'package:resposive/view/widget/All%20Expenses/headeractiveandnotactive.dart';

class Inactive extends StatelessWidget {
  const Inactive({super.key, required this.allexpensiseiteammodel});
  final Allexpensiseiteammodel allexpensiseiteammodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .2,
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Headeriteam(img: allexpensiseiteammodel.img),
            const SizedBox(
              height: 34,
            ),
            FittedBox (
              fit: BoxFit.scaleDown,
              child: Text(
                allexpensiseiteammodel.titel,
                style: AppStyles.styleSemiBold16(context)
                    .copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                allexpensiseiteammodel.date,
                style: AppStyles.styleRegular14(context)
                    .copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                allexpensiseiteammodel.price,
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class actve extends StatelessWidget {
  const actve(
      {super.key, required this.allexpensiseiteammodel, required model});
  final Allexpensiseiteammodel allexpensiseiteammodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xffF1F1F1))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderActiveieam(allexpensiseiteammodel: allexpensiseiteammodel),
            const SizedBox(
              height: 34,
            ),
            Text(
              allexpensiseiteammodel.titel,
              style: AppStyles.styleSemiBold16(context),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              allexpensiseiteammodel.date,
              style: AppStyles.styleRegular14(context),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              allexpensiseiteammodel.price,
              style: AppStyles.styleSemiBold24(context),
            )
          ],
        ),
      ),
    );
  }
}
