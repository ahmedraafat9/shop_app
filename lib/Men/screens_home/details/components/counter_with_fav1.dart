import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/Men/models/product1.dart';
import 'package:shop_app/Men/screens_home/details/components/cart_counter1.dart';

class CounterWithFav extends StatefulWidget {
  const CounterWithFav({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterWithFav> createState() => _CounterWithFavState();
}

class _CounterWithFavState extends State<CounterWithFav> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child:Container(
              padding: EdgeInsets.all(6),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Color(0xFFFF6464),
                shape: BoxShape.circle,
              ),
              child: (
                  Image.asset('assets/icons/heart.svg')
              ),
            ),
          ),
      ],
    );
  }
}