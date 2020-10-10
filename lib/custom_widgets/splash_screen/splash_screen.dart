import 'package:app_estetica/telas/telas_usuarios/tela_login.dart';
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
      navigateAfterSeconds: TelaLogin(),
      image: Image.asset('assets/images/barber.png'),
      backgroundColor: Colors.blue[200],
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
