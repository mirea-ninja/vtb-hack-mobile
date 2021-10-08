import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/quiz/quiz_home_screen.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';
import 'package:vtb_hack_mobile/src/video_tips/video_tips_screen.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Use MySize class for Vertical Rhythm
    MySize().init(context);
    return VideoTipsScreen(
      buttonText: 'Завершить год',
      infoText:
          'Мы расскажем, как найти баланс в инвестициях и минимизировать риски.',
      infoTitle: 'Как работает рынок, и почему это выгодно?',
      onButtonClick: () {},
      onSkipClick: () {},
      text: 'нет текста',
      videoUrl:
          'https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4',
    );
  }
}
