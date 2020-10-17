import 'package:app_estetica/custom_widgets/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'dart:core';

import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

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
          //Ajuste de tela
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
      ),
      debugShowCheckedModeBanner: false,
      title: "App estética",
      theme: ThemeData(
        primaryColor: Colors.purple[900],
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: ('Google'),
      ),
      home: CustomSplashScreen(),
    );
  }
}
