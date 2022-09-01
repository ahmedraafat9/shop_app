import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../../constants.dart';
import '../../../models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({Key? key,this.product}) : super(key: key);
  final Product? product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Leather Hand Bag',
            style: TextStyle(
                color: Colors.white
            ),
          ),
          Text(
            product!.title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
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
                    style: Theme.of(context).textTheme.headline4!.copyWith(
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
        ],
      ),
    );
  }
}