import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/quiz/quiz_question_rate_exp_screen.dart';
import 'package:vtb_hack_mobile/src/quiz/widgets/quiz_paragraph.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class QuizHomeScreen extends StatelessWidget {
  const QuizHomeScreen({Key? key}) : super(key: key);

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
                SizedBox(height: MySize.size60),
                Text(
                  "Инвестируйте \nв свое \nбудущее".toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MySize.size36,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MySize.size48),
                const QuizParagraph(
                    text:
                        "Пройдите короткий опрос и получите готовые решения с высокой доходностью"),
                const Spacer(),
                FullWidthButton(
                  text: "Настроить профиль",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const QuizQuestionRateExpScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
