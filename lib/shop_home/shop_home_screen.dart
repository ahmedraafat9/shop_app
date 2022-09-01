import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/Home.dart';
import 'components/cart.dart';

class ShopHome extends StatefulWidget {
  const ShopHome({Key? key}) : super(key: key);

  @override
  State<ShopHome> createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {

  int CurrentIndex=0;

  List<Widget> Screens=[
    Home(),
    Cart(),
  ];
  List<String> titles=[
    'Home','Cart',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              titles[CurrentIndex]
          ),
        ),
        body: Screens[CurrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 17,
          selectedItemColor: Colors.blue.shade500,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white70,
          currentIndex: CurrentIndex,
          onTap: (index){
            setState(() {
              CurrentIndex=index;
            });
          },
          items:  [
            BottomNavigationBarItem(
                icon:Icon(
                  Icons.home_filled,
                ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
