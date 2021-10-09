import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/achievements/models/achievement_model.dart';

class AchievementCard extends StatelessWidget {
  const AchievementCard({Key? key, required this.achievement})
      : super(key: key);

  final AchievementModel achievement;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(17),
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x267e7e7e),
            blurRadius: 250,
            offset: Offset(0, 4),
          ),
        ],
        color: const Color(0xff2a64e3),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            achievement.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: "Rubik",
              fontWeight: FontWeight.w500,
            ),
          ),
          achievement.image,
        ],
      ),
    );
  }
}
