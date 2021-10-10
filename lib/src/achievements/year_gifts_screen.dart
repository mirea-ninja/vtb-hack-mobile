import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:vtb_hack_mobile/src/achievements/widgets/gift_list_tile.dart';
import 'package:vtb_hack_mobile/src/achievements/models/gift_model.dart';
import 'package:vtb_hack_mobile/src/achievements/year_achievements_screen.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';

import 'models/gift_list_tile.dart';

class YearGiftsScreen extends StatelessWidget {
  YearGiftsScreen({Key? key}) : super(key: key);

  final List<GiftModel> gifts = [
    GiftModel(
      title: 'Apple',
      subtitle: 'Акция  ',
      price: '145,0 ₽',
      percentages: '12,43 %',
      image: SvgPicture.asset(
        'assets/icons/apple.svg',
      ),
    ),
    GiftModel(
      title: 'Apple',
      subtitle: 'Акция  ',
      price: '145,0 ₽',
      percentages: '12,43 %',
      image: SvgPicture.asset(
        'assets/icons/apple.svg',
      ),
    ),
    GiftModel(
      title: 'Apple',
      subtitle: 'Акция  ',
      price: '145,0 ₽',
      percentages: '12,43 %',
      image: SvgPicture.asset(
        'assets/icons/apple.svg',
      ),
    ),
    GiftModel(
      title: 'Apple',
      subtitle: 'Акция  ',
      price: '145,0 ₽',
      percentages: '12,43 %',
      image: SvgPicture.asset(
        'assets/icons/apple.svg',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff225ad6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30)
              .copyWith(top: 44, bottom: 33),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 270,
                child: Text(
                  "Вы завершили этот игровой год успешно и получаете бонусы от банка",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontFamily: "Rubik",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 34),
              Container(
                padding: const EdgeInsets.only(left: 17, right: 19),
                height: 85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x267e7e7e),
                      blurRadius: 250,
                      offset: Offset(0, 4),
                    ),
                  ],
                  color: const Color(0xff2a64e3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Вы сборали",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "1 из 8 ачивок",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/achievement.png',
                      width: 57,
                      height: 57,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 33),
              const Text(
                "Вы получаете акции в подарок \nстоймостью 20 000 рублей ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: "Rubik",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 26),
              Expanded(
                child: ListView.builder(
                  itemCount: gifts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GiftListTile(gift: gifts[index]),
                          if (index != gifts.length - 1)
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              child: Container(
                                width: 291,
                                height: 1,
                                color: const Color.fromRGBO(121, 143, 242, 1),
                              ),
                            ),
                          if (index == gifts.length - 1)
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              child: Container(
                                height: 1,
                                color: const Color.fromRGBO(121, 143, 242, 1),
                              ),
                            ),
                        ]);
                  },
                ),
              ),
              FullWidthButton(
                text: 'Дальше',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => YearAchievementscreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
