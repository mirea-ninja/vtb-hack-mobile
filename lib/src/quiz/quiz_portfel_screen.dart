import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/game/game_home_screen.dart';
import 'package:vtb_hack_mobile/src/quiz/widgets/quiz_options_list_view.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

import 'models/quiz_option.dart';

class QuizPortfelScreen extends StatefulWidget {
  const QuizPortfelScreen({Key? key}) : super(key: key);

  @override
  State<QuizPortfelScreen> createState() => _QuizPortfelScreen();
}

class _QuizPortfelScreen extends State<QuizPortfelScreen> {
  List<QuizOption> options = [
    QuizOption(text: "100% облигаций", title: "Ультраконсервативный"),
    QuizOption(text: "70% облигаций, 30% акций", title: "Консервативный"),
    QuizOption(
        text: "50% акций, 50% облигаций",
        title: "Умеренный",
        subtitle: "Подходит для вас!"),
    QuizOption(
      text: "Вы познакомитесь с базовыми терминами и пройдете быстрое обучение",
      title: "Новичок",
      subtitle: "Научитесь составлять инвестиционный портфел.",
    ),
    QuizOption(text: "70% акций, 30% облигаций", title: "Агрессивный"),
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
                      const Text(
                        "7/7",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: MySize.size24),
                  Text(
                    "Ваш инвестиционный профиль",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MySize.size22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: MySize.size16),
                  Text(
                    "Вы готовы идти на небольшой риск ради получения дополнительного дохода.  Предлагаем на начальном этапе пройти обучение и начать зарабатывать на инвестициях!",
                    style:
                        TextStyle(color: Colors.white, fontSize: MySize.size14),
                  ),
                  SizedBox(height: MySize.size28),
                  Expanded(child: QuizOptionsListView(options: options)),
                  SizedBox(height: MySize.size16),
                  Text(
                    "Аналитики подобрали вам бесплатные портфели, подходящие под ваш инвестиционный профиль. Первое время вы будете получать рекомендации от личного финансового ассистента",
                    style:
                        TextStyle(color: Colors.white, fontSize: MySize.size14),
                  ),
                  SizedBox(height: MySize.size16),
                  FullWidthButton(
                    text: "Завершить",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => GameHomeScreen()),
                      );
                    },
                  ),
                ],
              )),
        ));
  }
}
