import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/Men/models/product1.dart';

import '../../../../constants.dart';

class ColorDot extends StatelessWidget {
  final Color? color;
  final bool isSelected;
  const ColorDot({Key? key,  this.color,  required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin/4,
        right: kDefaultPaddin/2,
      ),
      padding: EdgeInsets.all(2),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color! : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
          decoration:BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          )
      ),
    );
  }
}
class ColorAndSize extends StatelessWidget {
  final Product? product;
  const ColorAndSize({Key? key,  this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Color'
                ),
                Row(
                  children: [
                    ColorDot(
                        color: product?.color,
                        isSelected: true
                    ),
                    ColorDot(
                      color: Color(0xFFA29B9B),
                      isSelected : false,
                    ),
                    ColorDot(
                      color: Color(0xFFF8C078),
                      isSelected: false,
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Size',
                  style: TextStyle(
                    color: kTextcolor,
                  ),
                ),
                Text(
                    "${product?.size} cm",
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                      fontWeight: FontWeight.bold,
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
