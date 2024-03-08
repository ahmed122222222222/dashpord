import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:resposive/view/dachbordview.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
     
      builder: (context) =>  const MyApp(),
    ), );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
