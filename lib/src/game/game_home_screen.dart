import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vtb_hack_mobile/src/game/widgets/bank_value_card.dart';
import 'package:vtb_hack_mobile/src/game/widgets/bank_value_card_bonus.dart';
import 'package:vtb_hack_mobile/src/game/game_slider.dart';
import 'package:vtb_hack_mobile/src/game/widgets/header.dart';

import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class GameHomeScreen extends StatelessWidget {
  const GameHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
