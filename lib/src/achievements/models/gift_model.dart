import 'package:flutter_svg/svg.dart';

class GiftModel {
  final String title;
  final String subtitle;
  final String price;
  final String percentages;
  final SvgPicture image;

  GiftModel(
      {required this.title,
      required this.subtitle,
      required this.price,
      required this.percentages,
      required this.image});
}
