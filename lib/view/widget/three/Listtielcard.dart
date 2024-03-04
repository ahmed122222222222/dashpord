import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive/core/utiles/image.dart';
import 'package:resposive/core/utiles/styelse.dart';

class Listtitelcard extends StatelessWidget {
  const Listtitelcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      trailing:SvgPicture.asset(Assets.imageGallery) ,
      title: Text("Name card",style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),),
      subtitle: Text("Syah Bandi",style: AppStyles.styleMedium20(context),),
    );
  }
}
