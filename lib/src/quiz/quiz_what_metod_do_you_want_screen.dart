import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/quiz/quiz_question_money_to_invest_screen.dart';
import 'package:vtb_hack_mobile/src/quiz/widgets/quiz_options_list_view.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

import 'models/quiz_option.dart';

class QuizWhatMetodDoYouWantScreen extends StatefulWidget {
  const QuizWhatMetodDoYouWantScreen({Key? key}) : super(key: key);

  @override
  State<QuizWhatMetodDoYouWantScreen> createState() =>
      _QuizWhatMetodDoYouWantScreen();
}

class _QuizWhatMetodDoYouWantScreen
    extends State<QuizWhatMetodDoYouWantScreen> {
  List<QuizOption> options = [
    QuizOption(text: "Получение небольшого дохода без риска"),
    QuizOption(text: "Получать средний доход использую незначительный риск"),
    QuizOption(text: "Высокий риск, высокий доход"),
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
                        "Назад",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Text(
                      "3/7",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: MySize.size24),
                Text(
                  "Какой метод инвестирования вам подходит?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MySize.size22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MySize.size16),
                Text(
                  "Возможность выбрать один вариант",
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
                              QuizQuestionMoneyToInvestScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
