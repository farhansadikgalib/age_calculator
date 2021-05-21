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
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds:Calculator_Screen() ,

      title: Text("Age Calculator",style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),),

      image: new Image.network('https://i.imgur.com/TyCSG9A.png'),


      backgroundColor: Colors.blueGrey,
      loaderColor: Colors.lightGreenAccent,

        
        
      );
      
      
      

  }
}
