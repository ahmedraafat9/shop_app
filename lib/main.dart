import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/login_screens/components/splash_screen.dart';
import 'package:shop_app/login_screens/login_screen.dart';
import 'package:shop_app/shop_home/components/Home.dart';
import 'package:shop_app/shop_home/components/cart.dart';
import 'package:shop_app/shop_home/shop_home_screen.dart';
import 'package:shop_app/women/screens_home/components/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextcolor),
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
