import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive/core/utiles/styelse.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile(
      {super.key,
      required this.data,
      required this.data1,
      required this.image});
  final String data, data1, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          data,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          data1,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
