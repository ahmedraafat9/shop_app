import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/Men/models/product1.dart';

import '../../../../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 65),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              right: kDefaultPaddin,
            ),
            height: 50.0,
            width: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: product!.color)
            ),
            child: IconButton(onPressed: (){},
              icon:Icon(
                  Icons.add_shopping_cart
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50.0,
              child: Container(
                child: MaterialButton(
                  onPressed: (){},
                  child: Text(
                    'BUY NOW',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: product!.color,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
