
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems=1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          buildOutlineButton(icon: Icons.remove,
              press: () {
                if (numOfItems > 1) {
                  setState(() {
                    numOfItems--;
                  });
                }
              }
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Text(
              numOfItems.toString().padLeft(2,"0"),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          buildOutlineButton(icon: Icons.add,
              press: (){
                setState(() {
                  numOfItems++;
                });
              }
          ),
        ],
      ),
    );
  }

  SizedBox buildOutlineButton({required IconData icon,required Function() press}) {
    return SizedBox(
      width: 40,
      height: 35,
      child: FloatingActionButton(
        onPressed: press,
        child: Icon(icon,
          color: Colors.black,),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        backgroundColor: Colors.grey.shade200,
        elevation: 0,
      ),
    );
  }
}
