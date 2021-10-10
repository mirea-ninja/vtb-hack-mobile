import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:vtb_hack_mobile/src/achievements/models/achievement_model.dart';
import 'package:vtb_hack_mobile/src/game/widgets/bank_value_card.dart';
import 'package:vtb_hack_mobile/src/game/widgets/bank_value_card_bonus.dart';
import 'package:vtb_hack_mobile/src/game/game_slider.dart';
import 'package:vtb_hack_mobile/src/game/widgets/header.dart';
import 'package:vtb_hack_mobile/src/providers/achievements.dart';
import 'package:vtb_hack_mobile/src/providers/stock_portfolio.dart';

import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class GameHomeScreen extends StatelessWidget {
  const GameHomeScreen({Key? key}) : super(key: key);

  void _modalBottomAchievements(context, AchievementModel achievement) {
    Future.delayed(Duration.zero, () async {
      showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          builder: (builder) {
            return Container(
              height: 390.0,
              color:
                  Colors.transparent, //could change this to Color(0xFF737373),
              //so you don't have to change MaterialApp canvasColor
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x267e7e7e),
                      blurRadius: 250,
                      offset: Offset(0, 4),
                    ),
                  ],
                  color: const Color(0xff225ad6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                achievement.title,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 3),
                              const Text(
                                "Вы получили первое достижение",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xfff4f4f4),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 9,
                                  vertical: 7,
                                ),
                                child: const Text(
                                  "+ 1 акция в подарок!",
                                  style: TextStyle(
                                    color: Color(0xff225ad6),
                                    fontSize: 13,
                                  ),
                                ),
                              )
                            ],
                          ),
                          achievement.image,
                        ],
                      ),
                      const SizedBox(height: 27),
                      Container(
                        height: 1,
                        color: const Color.fromRGBO(229, 229, 229, 1),
                      ),
                      const SizedBox(height: 16),
                      const SizedBox(
                        width: 292,
                        child: Text(
                          "Вы собрали свой первый портфель\nиспользуя советы аналитиков",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 26),
                      Text(
                        "Стоймость портфеля: ${Provider.of<StocksPortfolio>(context).getStocksPrice()} рублей",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Посмотрим, что будет с вашими инвестициями через 1 месяц?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<AchievementData> achievements =
        Provider.of<Achievements>(context).achievements;
    for (int i = 0; i < achievements.length; i++) {
      if (achievements[i].shown == false) {
        Provider.of<Achievements>(context).achievements[i].shown = true;
        _modalBottomAchievements(context, achievements[i].achievement);
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
      body: GameSlider(
        body: SafeArea(
          child: Container(
            margin: Spacing.horizontal(24),
            child: ListView(
              children: <Widget>[
                // Header
                const GameHomeHeader(),

                // Balances
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    BankValueCard(),
                    BankValueCardBonus(),
                  ],
                ),
                const SizedBox(height: 30),
                // Align however you like (i.e .centerRight, centerLeft)
                SvgPicture.asset(
                  'assets/images/your_cashback.svg',
                  alignment: const Alignment(-0.38, 0),
                  width: MediaQuery.of(context).size.width - 8,
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
