// ignore: file_names
import 'package:flutter/material.dart';

class AdaptiveUi extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const AdaptiveUi({super.key, required this.MobileLauyOut, required this.TabletLayOut, required this.DeskTopLayOut});
   // ignore: non_constant_identifier_names
   final WidgetBuilder MobileLauyOut,TabletLayOut,DeskTopLayOut;
   @override
   
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    return LayoutBuilder(builder: (context,Constraints)
    
    {
      if(Constraints.maxWidth<600)
     { return MobileLauyOut(context);}
     else if(Constraints.maxWidth<900)
     {
      return TabletLayOut(context);
     }
     else {
     return DeskTopLayOut(context);
     }
    }
    );
  }
}