import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/common_widgets/full_width_button.dart';

import 'game_result_modal.dart';

class GameFinishedModal extends StatelessWidget {
  const GameFinishedModal({Key? key}) : super(key: key);

  void _submit(BuildContext context) {
    Navigator.pop(context);
    showModalBottomSheet<void>(
      context: context,
      isDismissible: false,
      enableDrag: false,
      builder: (BuildContext context) {
        return GameResultModal();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: const Color.fromRGBO(34, 90, 214, 1),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Прошел целый год!'),
              const Text('Вы прекрасно прошли курс'),
              Spacer(),
              FullWidthButton(text: 'Итог', onPressed: () => _submit(context)),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
