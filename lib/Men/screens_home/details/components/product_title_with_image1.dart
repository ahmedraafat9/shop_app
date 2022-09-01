
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/Men/models/product1.dart';

import '../../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({Key? key, this.product}) : super(key: key);
  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'MensWear',
            style: TextStyle(
                color: Colors.white
            ),
          ),
          Text(
            product!.title,
            style: Theme
                .of(context)
                .textTheme
                .headline4!
                .copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                    ),
                  ),
                  Text(
                    '\$${product!.price}',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headline4!
                        .copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                child: Hero(
                    tag: "${product!.id}",
                    child: Image.asset(product!.image)),
              ),
            ],
          ),
        ],),);
  }
}