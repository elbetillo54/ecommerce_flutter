import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final List<Color> colors;

  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.colors,
      });
}

class Category {
  final String image, title;
  final List<Product> products;

  Category(
      {required this.image,
      required this.title,
      required this.products,
      });
}

List<Product> tennis_products = [
  Product(
      id: 1,
      title: "Tennis 1",
      price: 100,
      size: 26,
      description: dummyText,
      image: "assets/images/tennis_1_black.png",
      colors: [Colors.black,Colors.blue,Colors.green]
  ),
  Product(
      id: 2,
      title: "Tennis 2",
      price: 150,
      size: 26,
      description: dummyText,
      image: "assets/images/tennis_2_black.png",
      colors: [Colors.black,Colors.blue,Colors.green]
  ),
  Product(
      id: 3,
      title: "Tennis 3",
      price: 300,
      size: 26,
      description: dummyText,
      image: "assets/images/tennis_3_black.png",
      colors: [Colors.black,Colors.blue,Colors.green]
  ),
  Product(
      id: 4,
      title: "Tennis 4",
      price: 200,
      size: 26,
      description: dummyText,
      image: "assets/images/tennis_4_black.png",
      colors: [Colors.black,Colors.blue,Colors.green]
  )
];

List<Product> clothes_products = [
  Product(
      id: 1,
      title: "Clothes 1",
      price: 150,
      size: 26,
      description: dummyText,
      image: "assets/images/clothes_1_black.png",
      colors: [Colors.black,Colors.red,Colors.yellow]
  ),
  Product(
      id: 2,
      title: "Clothes 2",
      price: 100,
      size: 26,
      description: dummyText,
      image: "assets/images/clothes_2_red.png",
      colors: [Colors.black,Colors.red,Colors.yellow]
  ),
  Product(
      id: 3,
      title: "Clothes 3",
      price: 200,
      size: 26,
      description: dummyText,
      image: "assets/images/clothes_3_yellow.png",
      colors: [Colors.black,Colors.red,Colors.yellow]
  ),
];

List<Category> categories = [
  Category(
      title: "FW19",
      image: "assets/images/tennis.png",
      products: tennis_products,
  ),
  Category(
      title: "TENNIS",
      image: "assets/images/clothes.png",
      products: clothes_products,
  ),
];


String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

