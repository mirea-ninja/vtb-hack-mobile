import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/quick_start/widgets/quick_start_label.dart';

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
                    text: 'Быстрое начало',
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
                    fontSize: 41,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: MySize.size22!),
                  child: const Opacity(
                    opacity: 0.50,
                    child: Text(
                      "Как стать инвестором за 1 год",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const QuickStartLabel(
                    text: '+ 1 акция в подарок!',
                    backgroundColor: Colors.white,
                    textColor: Color(0xff225ad6)),
                SizedBox(height: MySize.size42),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: MySize.size8!),
                  child: Container(
                    width: 351,
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
                ),
                const Expanded(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Opacity(
                      opacity: 0.50,
                      child: Text(
                        "Как стать инвестором за 1 год",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MySize.size16),
                FullWidthButton(text: 'Начать', onPressed: () {}),
              ],
            )),
      ),
    );
  }
}
