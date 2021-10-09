import 'package:flutter/cupertino.dart';
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
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Positioned.fill(
                child: Image(
                  image: AssetImage('assets/images/background_2.png'),
                ),
              ),
            ),
            const Align(
              alignment: Alignment(1.0, 0.6),
              child: Positioned.fill(
                child: Image(
                  image: AssetImage('assets/images/background_1.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(MySize.size30!),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MySize.size60),
                  Text(
                    "Инвестируйте \nв свое \nбудущее!".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: MySize.size48),
                  const QuizParagraph(
                      text:
                          "Пройдите короткий опрос и получите готовые решения с высокой доходностью"),
                  SizedBox(height: MySize.size16),
                  const QuizParagraph(
                      text:
                          "Новый метод работы с инвестициями поможет вам быть уверенее в будущих сделках"),
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
          ],
        ),
      ),
    );
  }
}
