import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/Men/screens_home/compnents/home_screen1.dart';
import 'package:shop_app/shop_home/components/carousel.dart';
import '../../women/screens_home/components/home_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 15,
            bottom: 7,
            left: 5,
          ),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_bag_sharp,
                  size: 35,
                ),
                Text(
                  'SHOP',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27.0,
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    width: 260,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey[200],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search_outlined,
                          size: 30,
                          color: Colors.grey.shade600,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'What are you looking for ?',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 17,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: Colors.grey.shade900,
        ),
        DestinationCarousel(key: null),
        Container(
          width: double.infinity,
          height: 1,
          color: Colors.grey.shade600,
        ),
        Expanded(
          child: Container(
            color: Colors.blue.shade300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      bottom: 8.0,
                      top: 15,
                    ),
                    child: Stack(
                      children: [
                        Image(
                          image: NetworkImage(
                            'https://images.pexels.com/photos/1342609/pexels-photo-1342609.jpeg?cs=srgb&dl=pexels-the-lazy-artist-gallery-1342609.jpg&fm=jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: double.infinity,
                          child: MaterialButton(
                            color: Colors.blue.shade800,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen1(),
                                ),
                              );
                            },
                            child: Text(
                              'MEN',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 10.0,
                      left: 10.0,
                      bottom: 8.0,
                      top: 15,
                    ),
                    child: Stack(
                      children: [
                        Image(
                          image: NetworkImage(
                            'https://i.pinimg.com/originals/b2/99/f7/b299f7e5b83c7e3bdc44ea200ee8d8d9.jpg',
                          ),

                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          width:double.infinity,
                          child: MaterialButton(
                            color: Colors.blue.shade800,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'WOMEN',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
