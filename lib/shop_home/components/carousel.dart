
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_controller.dart';

class DestinationCarousel extends StatefulWidget {
  const DestinationCarousel({required key}) : super(key: key);

  @override
  State<DestinationCarousel> createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<DestinationCarousel> {

  int _Current = 0;

  final List<String> images=[
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
    'assets/image5.jpg',
    'assets/image6.jpg',
  ];
  final List<String> names=[
    'MensWear',
    'Watches Collection',
    'SportsWear',
    'Bags',
    'MensWear',
    'Sneakers',
  ];

  List<Widget> generateImageTiles(){
    return images.map((element) =>ClipRRect(
      child: Image.asset(element,
      fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(18.0),
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade400,
      padding: const EdgeInsets.only(
          top: 30,
          bottom: 40,
      ),
      child: Stack(
        children: [
          CarouselSlider(items: generateImageTiles(),
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                onPageChanged: (index,other){
                  setState(() {
                    _Current = index;
                  });
                }
              ),
          ),
          AspectRatio(aspectRatio: 18/8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text(
              "${names[_Current ]}",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width/13,
              ),
            ),],
          ),),
        ],
      ),
    );
  }
}
