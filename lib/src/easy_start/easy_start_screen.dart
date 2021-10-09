import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vtb_hack_mobile/src/easy_start/models/stocks_model.dart';
import 'package:vtb_hack_mobile/src/easy_start/widgets/recommends_card.dart';
import 'package:vtb_hack_mobile/src/easy_start/widgets/stocks_listview.dart';
import 'package:vtb_hack_mobile/src/providers/invest_balance.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

import 'widgets/circle_number_icon.dart';

class EasyStartScreen extends StatelessWidget {
  EasyStartScreen({Key? key}) : super(key: key);

  final List<StocksModel> stocks = [
    StocksModel(
        title: 'Ozon',
        price: 3545,
        percentages: 64.3,
        image: Image.asset('assets/images/ozon_logo.png')),
    StocksModel(
        title: 'Газпром',
        price: 366.74,
        percentages: 119,
        image: Image.asset('assets/images/gazprom_logo.png')),
    StocksModel(
        title: 'Полиметалл',
        price: 1256.0,
        percentages: -26.19,
        image: Image.asset('assets/images/polymetal_logo.png')),
    StocksModel(
        title: 'М.Видео',
        price: 596.1,
        percentages: 9.41,
        image: Image.asset('assets/images/mvideo_logo.png')),
    StocksModel(
        title: 'Роснефть',
        price: 631.00,
        percentages: -63.24,
        image: Image.asset('assets/images/rosneft_logo.png')),
  ];

  @override
  Widget build(BuildContext context) {
    final investProvider = Provider.of<InvestBalance>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(MySize.size30!),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    style: TextStyle(
                      color: Color(0xff0a0a0a),
                    ),
                  ),
                ),
                const SizedBox(height: 49),
                const Text(
                  "Легкий старт",
                  style: TextStyle(
                    color: Color(0xff222222),
                    fontSize: 14,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 13),
                Text(
                  "Вы готовы \nинвестировать ${investProvider.balance.toStringAsFixed(0)}\n",
                  style: const TextStyle(
                    color: Color(0xff222222),
                    fontSize: 25,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Выберите акции, облигации \nи готовый портфель на эту сумму!",
                  style: TextStyle(
                    color: Color(0xffababab),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 31),
                const RecommendsCard(),
                const SizedBox(height: 56),
                const CircleNumberIcon(number: 1),
                const SizedBox(height: 20),
                const Text(
                  "Более тысячи акций с Московской и Санкт-Петербургской биржи",
                  style: TextStyle(
                    color: Color(0xff222222),
                    fontSize: 18,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Мы подобрали 5 акций с высоким показателем за год",
                  style: TextStyle(
                    color: Color(0xff222222),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Выберите 3 акции:",
                  style: TextStyle(
                    color: Color(0xffababab),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 17),
                StocksList(stocks: stocks),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
