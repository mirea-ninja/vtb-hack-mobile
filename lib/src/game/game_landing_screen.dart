import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:vtb_hack_mobile/src/game/widgets/bank_value_card.dart';
import 'package:vtb_hack_mobile/src/game/widgets/bank_value_card_bonus.dart';
import 'package:vtb_hack_mobile/src/game/game_slider.dart';
import 'package:vtb_hack_mobile/src/game/widgets/header.dart';
import 'package:vtb_hack_mobile/src/providers/invest_balance.dart';

import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class GameLandingScreen extends StatelessWidget {
  const GameLandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final investProvider = Provider.of<InvestBalance>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        body: SafeArea(
          child: Container(
            margin: Spacing.horizontal(24),
            child: ListView(
              children: <Widget>[
                // Header
                Text("Вы готовы инвестировать"),
                Text("${investProvider.balance}")
              ],
            ),
          ),
        ),
    );
  }
}
