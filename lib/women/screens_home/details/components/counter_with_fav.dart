
import 'package:flutter/cupertino.dart';

import 'cart_counter.dart';

class CounterWithFav extends StatelessWidget {
  const CounterWithFav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Container(
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