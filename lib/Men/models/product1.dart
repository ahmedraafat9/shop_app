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
      image: "assets/menimages/product1.png",
      title: 'adidas',
      price: 250,
      description: '',
      size: 38,
      color:Colors.grey.shade400),
  Product(
      id: 2,
      image: "assets/menimages/product2.png",
      title: 'Boss',
      price: 160,
      description: '',
      size: 36,
      color: Colors.grey.shade900),
  Product(
      id: 3,
      image: "assets/menimages/product3.png",
      title: 'NIKE',
      price: 360,
      description: '',
      size: 40,
      color: Colors.grey.shade800),
  Product(
      id: 4,
      image: "assets/menimages/product4.png",
      title: 'Tom Ford',
      price: 500,
      description: '',
      size: 52,
      color: Colors.blueGrey.shade900),
  Product(
      id: 5,
      image: "assets/menimages/product9.png",
      title: 'ZARA',
      price: 400,
      description: '',
      size: 41,
      color: Colors.amber.shade900),
  Product(
      id: 6,
      image: "assets/menimages/product5.png",
      title: 'Clarks',
      price: 180,
      description: '',
      size: 43,
      color: Colors.grey.shade900),
  Product(
      id: 7,
      image: "assets/menimages/product7.png",
      title: 'Prada',
      price: 30,
      description: '',
      size: 5,
      color: Colors.blueGrey.shade700),
  Product(
      id: 8,
      image: "assets/menimages/product8.png",
      title: 'Burberry',
      price: 470,
      description: '',
      size: 50,
      color: Colors.grey.shade800),
  Product(
      id: 10,
      image: "assets/menimages/product10.png",
      title: 'Dolce&Gabbana',
      price: 330,
      description: '',
      size: 43,
      color: Colors.grey.shade500),


];