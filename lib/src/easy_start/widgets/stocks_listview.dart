import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/easy_start/models/stocks_model.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class StocksList extends StatefulWidget {
  StocksList({Key? key, required this.stocks}) : super(key: key);

  final List<StocksModel> stocks;

  @override
  _StocksListState createState() => _StocksListState();
}

class _StocksListState extends State<StocksList> {
  late List<bool> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(widget.stocks.length, false);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final oldCheckboxTheme = theme.checkboxTheme;

    final newCheckBoxTheme = oldCheckboxTheme.copyWith(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      fillColor: MaterialStateProperty.all(const Color(0xff225ad6)),
    );

    return Stack(children: [
      Opacity(
        opacity: 0.20,
        child: Container(
          height: 435,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xffd4dce2),
          ),
        ),
      ),
      Column(
        children: List.generate(widget.stocks.length, (index) {
          final item = widget.stocks[index];
          return Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Theme(
              data: theme.copyWith(checkboxTheme: newCheckBoxTheme),
              child: CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: const EdgeInsets.only(
                    left: 4, top: 15, bottom: 15, right: 23),
                shape: const CircleBorder(),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      item.image,
                      const SizedBox(width: 14),
                      Text(
                        item.title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          item.price.toStringAsFixed(2) + ' ₽',
                          style: const TextStyle(
                            color: Color(0xff2e2e2e),
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          item.percentages.toStringAsFixed(2) + ' %',
                          style: TextStyle(
                            color: item.percentages > 0
                                ? const Color(0xff26b166)
                                : const Color(0xffea1d1d),
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                value: _isChecked[index],
                onChanged: (value) => setState(() {
                  _isChecked[index] = value!;
                }),
              ),
            ),
            if (index != widget.stocks.length - 1)
              Padding(
                padding: EdgeInsets.only(right: 23),
                child: Container(
                  width: 251,
                  height: 1,
                  color: const Color.fromRGBO(229, 229, 229, 1),
                ),
              ),
          ]);
        }),
      ),
    ]);
  }
}
