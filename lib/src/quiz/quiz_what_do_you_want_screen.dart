import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/quiz/quiz_what_metod_do_you_want_screen.dart';
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
      text: "Получать пассивную прибыль",
    ),
    QuizOption(
      text: "Накопить на крупные покупки",
    ),
    QuizOption(
      text: "Профессионально работать с инвестициями",
    ),
    QuizOption(
      text: "Создать финансовую подушку безопасности",
    ),
    QuizOption(
      text: "Заработать на ежедневной торговле",
    ),
    QuizOption(
      text: "Хочу научиться инвестировать",
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
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Назад",
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
                    "Какие ваши инвестиционные цели?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MySize.size22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: MySize.size16),
                  Text(
                    "Можно выбрать несколько вариантов",
                    style:
                        TextStyle(color: Colors.white, fontSize: MySize.size14),
                  ),
                  SizedBox(height: MySize.size28),
                  Expanded(child: QuizOptionsListView(options: options)),
                  SizedBox(height: MySize.size16),
                  FullWidthButton(
                    text: "Продолжить",
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) =>
                                QuizWhatMetodDoYouWantScreen()),
                      );
                    },
                  ),
                ],
              )),
        ));
  }
}
