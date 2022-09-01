import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/women/screens_home/details/components/product_title_with_image.dart';
import '../../../models/product.dart';
import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'color_and_size.dart';
import 'counter_with_fav.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;
  const DetailsScreen({Key? key,this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product?.color,
      appBar: AppBar(
        backgroundColor: product?.color,
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        )),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(onPressed: (){},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              )),
          SizedBox(
            width: kDefaultPaddin,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: size.height * 0.3,
                    ),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                    ),
                    //height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24),
                      )
                    ),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        SizedBox(
                          height: 80.0,
                        ),
                        CounterWithFav(),
                        AddToCart(product: product),
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

