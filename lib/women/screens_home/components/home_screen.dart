
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import '../../models/product.dart';
import '../details/components/details_screen.dart';
import 'categories.dart';
import 'item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              'Women',
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
                      childAspectRatio: 0.75,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
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
      leading: IconButton(
          onPressed: () {
           // Navigator.push(context,
           // MaterialPageRoute(builder: (context){
             // return Home();
            //})
            //);
          },
          icon: Icon(
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
