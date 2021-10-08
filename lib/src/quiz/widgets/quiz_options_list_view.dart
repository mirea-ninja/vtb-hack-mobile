import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/quiz/models/quiz_option.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class QuizOptionsListView extends StatefulWidget {
  final List<QuizOption> options;

  const QuizOptionsListView({Key? key, required this.options})
      : super(key: key);

  @override
  _QuizOptionsListViewState createState() => _QuizOptionsListViewState();
}

class _QuizOptionsListViewState extends State<QuizOptionsListView> {
  late List<bool> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(widget.options.length, false);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final oldCheckboxTheme = theme.checkboxTheme;

    final newCheckBoxTheme = oldCheckboxTheme.copyWith(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      fillColor: MaterialStateProperty.all(Colors.white),
    );

    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      // Let the ListView know how many items it needs to build.
      itemCount: widget.options.length,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, index) {
        final item = widget.options[index];
        return Container(
          margin: const EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0x19ffffff),
          ),
          child: Theme(
            data: theme.copyWith(checkboxTheme: newCheckBoxTheme),
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.symmetric(vertical: MySize.size10!),
              shape: const CircleBorder(),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (item.title != null)
                    Text(
                      item.title!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MySize.size16,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  SizedBox(height: MySize.size10),
                  Text(
                    item.text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: MySize.size14,
                    ),
                  ),
                  SizedBox(height: MySize.size8),
                ],
              ),
              subtitle: item.subtitle != null
                  ? Opacity(
                      opacity: 0.5,
                      child: Text(
                        item.subtitle!,
                        style: const TextStyle(color: Colors.white60),
                      ),
                    )
                  : null,
              value: _isChecked[index],
              onChanged: (value) => setState(() {
                _isChecked[index] = value!;
              }),
            ),
          ),
        );
      },
    );
  }
}
