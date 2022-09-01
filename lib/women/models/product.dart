import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      image: "assets/images/bag1.png",
      title: 'Burberry',
      price: 250,
      description: '',
      size: 12,
      color:Colors.pink.shade100),
  Product(
      id: 2,
      image: "assets/images/bag3.png",
      title: 'Guess',
      price: 220,
      description: '',
      size: 10,
      color: Colors.lightBlue.shade300),
  Product(
      id: 3,
      image: "assets/images/bag2.png",
      title: 'Gucci',
      price: 300,
      description: '',
      size: 13,
      color: Colors.grey.shade700),
  Product(
      id: 4,
      image: "assets/images/bag4.png",
      title: 'Celine',
      price: 270,
      description: '',
      size: 11,
      color: Colors.orange.shade100),
  Product(
      id: 5,
      image: "assets/images/bag5.png",
      title: 'Fossil',
      price: 320,
      description: '',
      size: 14,
      color: Colors.deepOrange.shade400),
  Product(
      id: 5,
      image: "assets/images/bag6.png",
      title: 'Calvin Klein',
      price: 180,
      description: '',
      size: 12,
      color: Colors.red.shade600),
];
