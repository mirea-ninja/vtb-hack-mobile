import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/achievements/models/achievement_model.dart';
import 'package:vtb_hack_mobile/src/achievements/widgets/achievement_card.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';

class YearAchievementscreen extends StatelessWidget {
  YearAchievementscreen({Key? key}) : super(key: key);

  final List<AchievementModel> achievements = [
    AchievementModel(
        title: 'За смелость!\nвы прошли мини игру\nобучение\n',
        image: Image.asset('assets/images/achievement.png')),
    AchievementModel(
        title: 'За смелость!\nвы прошли мини игру\nобучение\n',
        image: Image.asset('assets/images/achievement.png')),
    AchievementModel(
        title: 'За смелость!\nвы прошли мини игру\nобучение\n',
        image: Image.asset('assets/images/achievement.png')),
    AchievementModel(
        title: 'За смелость!\nвы прошли мини игру\nобучение\n',
        image: Image.asset('assets/images/achievement.png')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff225ad6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30)
              .copyWith(top: 44, bottom: 33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 270,
                child: Text(
                  "Что вы заработали\nиз ачивок",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 13),
              const Text(
                "Выполните все задания, найдете \nих в разделе “Еще” выполняя их вы научитесь \nинвестировать просто, пройдете \nкурс инвестора и получите приятные презы!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 13),
              Expanded(
                child: ListView.builder(
                  itemCount: achievements.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: AchievementCard(achievement: achievements[index]),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: const Color(0xffffe60a),
                  elevation: 0,
                  minimumSize: const Size(double.infinity, 56),
                ),
                onPressed: () {},
                child: const Text(
                  'Поделиться результатом!',
                  style: TextStyle(
                    color: Color(0xff111111),
                    fontSize: 16,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              FullWidthButton(text: 'Дальше', onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
