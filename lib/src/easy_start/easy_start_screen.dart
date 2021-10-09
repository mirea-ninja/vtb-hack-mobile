import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';
import 'package:vtb_hack_mobile/src/easy_start/models/stocks_model.dart';
import 'package:vtb_hack_mobile/src/easy_start/widgets/bonds_listview.dart';
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

  final List<StocksModel> bonds = [
    StocksModel(
        title: 'ПИК БО-П03',
        price: 1040.80,
        percentages: 8.47,
        image: Image.asset('assets/images/pik_logo.png')),
    StocksModel(
        title: 'КАМАЗ БОП3',
        price: 705.20,
        percentages: 9.03,
        image: Image.asset('assets/images/kamaz_logo.png')),
    StocksModel(
        title: 'МосОб35016',
        price: 960.24,
        percentages: 7.74,
        image: Image.asset('assets/images/mos_logo.png')),
    StocksModel(
        title: 'АЛЬФА-Б2Р7',
        price: 1011.00,
        percentages: 7.32,
        image: Image.asset('assets/images/alpha_logo.png')),
    StocksModel(
        title: 'ИКС5Фин2Р1',
        price: 996.01,
        percentages: 8.15,
        image: Image.asset('assets/images/x5_logo.png')),
  ];

  @override
  Widget build(BuildContext context) {
    final investProvider = Provider.of<InvestBalance>(context);
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
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
                  const SizedBox(height: 44),
                  const CircleNumberIcon(number: 2),
                  const SizedBox(height: 20),
                  const Text(
                    "Дайте деньги компании или государству в долг под процент",
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 18,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Мы подобрали 5 облигации популярные у инвесторов",
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Выберите 3 облигации:",
                    style: TextStyle(
                      color: Color(0xffababab),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 17),
                  BondsList(bonds: bonds),
                  const SizedBox(height: 44),
                  const CircleNumberIcon(number: 3),
                  const SizedBox(height: 20),
                  const Text(
                    "Готовый портфель в один клик",
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 18,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Готовые портфели для тех, кто не знает с чего начать",
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Выберите 1 готовый портфель",
                    style: TextStyle(
                      color: Color(0xffababab),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 17),
                  Image.asset('assets/images/ready_portfolio_block.png'),
                  const SizedBox(height: 200),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 35, horizontal: 41),
            width: MediaQuery.of(context).size.width,
            height: 215,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xff225ad6),
            ),
            child: Column(
              children: [
                const Text(
                  "2 445, 22 ₽",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 39,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "У вас осталось",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                FullWidthButton(
                    text: 'Использовать стратегию', onPressed: () {})
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
