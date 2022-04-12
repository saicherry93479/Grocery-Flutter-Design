import 'package:flutter/material.dart';

class Item {
  String name;
  String price;
  String reviewCount;
  String image;
  Color background;

  Item(
      {required this.background,
      required this.name,
      required this.price,
      required this.reviewCount,
      required this.image});
}

List itemList = [
  Item(
      background: Color(0XFF2D3936),
      name: 'BLUEBERRY',
      price: '5.66',
      reviewCount: '433',
      image: 'assets/images/blueberry.png'),
  Item(
      background: Color(0XFF3B312F),
      name: 'ORANGE',
      price: '8.82',
      reviewCount: '200',
      image: 'assets/images/orange.png'),
];

Color MainColor = Color(0XFFF4C750);
Color PrimaryColor = Color(0XFF1E1E1E);
Color SecondaryColor = Color(0XFF2C2C2C);
Color tColor = Color(0XFF161616);
Color iconBack = Color(0XFF262626);

class Iconss {
  String image;
  String head;
  Iconss({required this.image, required this.head});
}

List iconsList = [
  Iconss(image: 'assets/icons/LikeOutline.svg', head: 'Quality\nAssurance'),
  Iconss(image: 'assets/icons/StartOutline.svg', head: 'Highly\nRated'),
  Iconss(image: 'assets/icons/SpoonOutline.svg', head: 'Best In\nTaste'),
];
