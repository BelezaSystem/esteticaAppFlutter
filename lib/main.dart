import 'package:app_estetica/custom_widgets/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
