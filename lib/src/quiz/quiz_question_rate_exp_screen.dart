import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/quiz/quiz_what_do_you_want_screen.dart';
import 'package:vtb_hack_mobile/src/quiz/widgets/quiz_options_list_view.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

import 'models/quiz_option.dart';

class QuizQuestionRateExpScreen extends StatefulWidget {
  const QuizQuestionRateExpScreen({Key? key}) : super(key: key);

  @override
  State<QuizQuestionRateExpScreen> createState() =>
      _QuizQuestionRateExpScreenState();
}

class _QuizQuestionRateExpScreenState extends State<QuizQuestionRateExpScreen> {
  List<QuizOption> options = [
    QuizOption(
      text: "Вы познакомитесь с базовыми терминами и пройдете быстрое обучение",
      title: "Новичок",
      subtitle:
          "Вы познакомитесь с базовыми терминами и пройдете быстрое обучение",
    ),
    QuizOption(
      text:
          "Вы уже ранее занимались инвестициями и знакомы с основыми инструметами инвестора",
      title: "Опытный",
      subtitle: "Больше возможностей в приложении",
    ),
    QuizOption(
      text: "Вам нужнен полный доступ ко всем инструментам",
      title: "Эксперт",
      subtitle: "Никаких ограничений в ваших инвестициях",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(34, 90, 214, 1),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(MySize.size30!),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.centerLeft),
                      onPressed: () {},
                      child: const Text(
                        "Пропустить",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Text(
                      "1/7",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: MySize.size24),
                Text(
                  "Оцените свой опыт в \nинвестициях",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MySize.size22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MySize.size16),
                Text(
                  "Настройки можно будет поменять в настройках приложения",
                  style:
                      TextStyle(color: Colors.white, fontSize: MySize.size14),
                ),
                SizedBox(height: MySize.size28),
                QuizOptionsListView(options: options),
                const Spacer(),
                FullWidthButton(
                  text: "Продолжить",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const QuizWhatDoYouWantScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
