import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/achievements/year_achievements_screen.dart';
import 'package:vtb_hack_mobile/src/achievements/year_gifts_screen.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';

class GameResultModal extends StatelessWidget {
  const GameResultModal({Key? key}) : super(key: key);

  void _submit(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => YearGiftsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: const Color.fromRGBO(34, 90, 214, 1),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('ИТОГИ ИГРЫ'),
              Spacer(),
              FullWidthButton(text: 'Это только начало!', onPressed: () => _submit(context)),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
