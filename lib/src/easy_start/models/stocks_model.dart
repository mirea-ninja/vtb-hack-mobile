import 'package:flutter/material.dart';

class StocksModel {
  final String title;
  final double price;
  final double percentages;
  final Image image;

  StocksModel(
      {required this.title,
      required this.price,
      required this.percentages,
      required this.image});
}
