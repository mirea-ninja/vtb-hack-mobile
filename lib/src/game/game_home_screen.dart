import 'package:flutter/material.dart';
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
      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
