import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/game/game_home_screen.dart';
import 'package:vtb_hack_mobile/src/quick_start/widgets/quick_start_label.dart';
import 'package:vtb_hack_mobile/src/video_tips/video_tips_screen.dart';

import '../settings/size_config.dart';

class QuickStartScreen extends StatelessWidget {
  const QuickStartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff225ad6),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MySize.size30!, vertical: MySize.size40!),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const QuickStartLabel(
                    text: 'Итак начнем!',
                    backgroundColor: Color(0xffffe60a),
                    textColor: Color(0xff373737)),
                Padding(
                  padding: EdgeInsets.only(
                      top: MySize.size30!, bottom: MySize.size28!),
                  child: const Text(
                    "Как это работает?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Text(
                  "Выполните задания и получи акции и бонуы от банка ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 31,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Как стать инвестором за 1 год?\nМы предлагаем вам увидеть как работают инвестиции и что будет через год, после того как вы купите акции на 10 000 рублей!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff1649bb),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/headphones.svg'),
                      SizedBox(width: MySize.size8),
                      const Text(
                        "Используйте наушники",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff5886eb),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/time.svg'),
                      SizedBox(width: MySize.size8),
                      const Text(
                        "10 минут погружения в тему",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 14),
                FullWidthButton(
                    text: 'Приступить',
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VideoTipsScreen(
                                infoTitle:
                                    'Почему каждому важно начать инвестировать',
                                infoText:
                                    'Мы расскажем, как сделать первые шаги в инвестициях и минимизировать риски',
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
                    }),
              ],
            )),
      ),
    );
  }
}
