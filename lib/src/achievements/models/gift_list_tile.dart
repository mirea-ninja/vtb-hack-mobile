import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/achievements/models/gift_model.dart';

class GiftListTile extends StatelessWidget {
  const GiftListTile({Key? key, required this.gift}) : super(key: key);

  final GiftModel gift;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              gift.image,
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    gift.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    gift.subtitle,
                    style: const TextStyle(
                      color: Color(0xff94b3f8),
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                gift.price,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                gift.percentages,
                style: const TextStyle(
                  color: Color(0xff91f8c0),
                  fontSize: 12,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
