import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/achievements/models/achievement_model.dart';
import 'package:vtb_hack_mobile/src/achievements/widgets/achievement_card.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/game/game_home_screen.dart';
import 'package:vtb_hack_mobile/src/video_tips/video_tips_screen.dart';

class YearAchievementscreen extends StatelessWidget {
  YearAchievementscreen({Key? key}) : super(key: key);

  final List<AchievementModel> achievements = [
    AchievementModel(
        title: 'Легкий старт\nвы прошли мини игру\nобучение\n',
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
              FullWidthButton(
                  text: 'Дальше',
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VideoTipsScreen(
                              infoTitle:
                                  'Как работает рынок, и почему это выгодно?',
                              infoText:
                                  'Мы расскажем, как найти баланс в инвестициях и минимизировать риски.',
                              buttonText: 'Продолжить',
                              onButtonClick: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const GameHomeScreen()),
                                    (Route<dynamic> route) => false);
                              },
                              onSkipClick: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const GameHomeScreen()),
                                    (Route<dynamic> route) => false);
                              },
                              text: '',
                              videoUrl:
                                  'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4'),
                        ),
                        (Route<dynamic> route) => false);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
