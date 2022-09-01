
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/Men/screens_home/compnents/categories1.dart';
import 'package:shop_app/Men/screens_home/compnents/item_card1.dart';
import 'package:shop_app/Men/screens_home/details/components/details_screen1.dart';
import 'package:shop_app/shop_home/components/Home.dart';
import 'package:shop_app/shop_home/shop_home_screen.dart';
import '../../../constants.dart';
import '../../models/product1.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  BuildContext get context => context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Men',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(
            height: 13.0,
          ),
          Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context, index){
                    return ItemCard(
                      product: products[index],
                      press: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context){
                              return DetailsScreen(
                                product: products[index],
                              );
                            })
                        );
                      },
                    );
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: MaterialButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return ShopHome();
                }));
            },
          child: Icon(
            Icons.arrow_back,
            color: Colors.grey[500],
          )),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey[500],
            )),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart, color: Colors.grey[500]),
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}