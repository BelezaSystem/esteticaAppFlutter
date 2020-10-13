import 'package:app_estetica/custom_widgets/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: "App estética",
      theme: ThemeData(
        primaryColor: Colors.blue[200],
        scaffoldBackgroundColor: Colors.blue[200],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: ('Google'),
      ),
      home: CustomSplashScreen(),
    );
  }
}
