import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                      image: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/2038/2038854.png',
                      ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Your cart is empty',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Be sure to fill your cart with something you like',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Colors.grey.shade600
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
