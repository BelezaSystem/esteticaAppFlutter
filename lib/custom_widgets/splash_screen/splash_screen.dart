import 'package:app_estetica/telas/tela_inicial/tela_inicial.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class CustomSplashScreen extends StatefulWidget {
  @override
  _CustomSplashScreenState createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: TelaInicial(),
      image: Image.asset('assets/images/barber.png'),
      backgroundColor: Colors.blue[200],
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
