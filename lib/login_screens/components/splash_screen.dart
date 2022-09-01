import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shop_app/login_screens/login_screen.dart';
import 'package:shop_app/shop_home/shop_home_screen.dart';

import '../../shop_home/components/Home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash:Lottie.asset("assets/lottie/lottie.json")
      ,
      nextScreen:  LoginScreen(),
      splashIconSize: 250,
      backgroundColor: Colors.blueAccent,
      duration: 5000,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration:  Duration(seconds: 5),
    );  }
}