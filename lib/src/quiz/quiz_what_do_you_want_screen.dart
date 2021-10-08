import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/quiz/quiz_question_money_to_invest_screen.dart';
import 'package:vtb_hack_mobile/src/quiz/widgets/quiz_options_list_view.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

import 'models/quiz_option.dart';

class QuizWhatDoYouWantScreen extends StatefulWidget {
  const QuizWhatDoYouWantScreen({Key? key}) : super(key: key);

  @override
  State<QuizWhatDoYouWantScreen> createState() =>
      _QuizWhatDoYouWantScreenState();
}

class _QuizWhatDoYouWantScreenState extends State<QuizWhatDoYouWantScreen> {
  List<QuizOption> options = [
    QuizOption(
      text: "Получение пассивной прибыли",
    ),
    QuizOption(
      text: "Накопить на крупные покупки",
    ),
    QuizOption(
      text: "Профессионально работать с инвестициями",
    ),
    QuizOption(
      text: "Создать финансовую подушку",
    ),
    QuizOption(
      text: "Хочу научиться инвестировать",
    ),
    QuizOption(
      text: "Получить опыт",
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
                        "2/7",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: MySize.size24),
                  Text(
                    "Что вы хотете получить инвестируя?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MySize.size22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: MySize.size16),
                  Text(
                    "Возможность выбрать несколько ответов",
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
              )),
        ));
  }
}
