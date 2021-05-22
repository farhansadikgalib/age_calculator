import 'package:age_calculator/Screens/Calculator_Screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key key}) : super(key: key);

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SplashScreen(
        seconds: 4,
        navigateAfterSeconds: Calculator_Screen(),
        title: Text(
          "AGE CALCULATOR",
          style: TextStyle(
              color: Colors.brown, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        image: Image.asset(
          "assets/human.png",
        ),
        photoSize: 150,
        useLoader: true,
        loadingText: Text(
          "Starting Now",
          style: TextStyle(fontSize: 12, color: Colors.white70),
        ),
        backgroundColor: Colors.blueGrey[500],
        loaderColor: Colors.black26,
      ),
    );
  }
}
