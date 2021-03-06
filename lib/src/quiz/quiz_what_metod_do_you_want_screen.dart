import 'package:flutter/cupertino.dart';
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
    QuizOption(text: "Получать небольшого доход, без риска"),
    QuizOption(text: "Получать средний доход, готов на незначительный риск"),
    QuizOption(text: "Получать высокий доход, готов на значительный риск"),
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
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
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
                  "Ваши ожидания доходности от инвестиций?",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MySize.size22,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MySize.size16),
                Text(
                  "Можно выбрать один вариант ответа",
                  style:
                      TextStyle(color: Colors.white, fontSize: MySize.size14),
                ),
                SizedBox(height: MySize.size28),
                QuizOptionsListView(
                  options: options,
                  multiSelection: false,
                ),
                const Spacer(),
                FullWidthButton(
                  text: "Продолжить",
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
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
