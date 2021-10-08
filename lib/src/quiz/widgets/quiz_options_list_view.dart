import 'package:flutter/material.dart';
import 'package:vtb_hack_mobile/src/quiz/models/quiz_option.dart';
import 'package:vtb_hack_mobile/src/settings/size_config.dart';

class QuizOptionsListView extends StatefulWidget {
  final List<QuizOption> options;

  const QuizOptionsListView({Key? key, required this.options}) : super(key: key);

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
              color: Colors.white24,
              border: Border.all(
                color: Colors.white24,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))
          ),
          child: CheckboxListTile(
              contentPadding: const EdgeInsets.all(0),
              shape: const CircleBorder(),
              controlAffinity: ListTileControlAffinity.leading,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (item.title!.isNotEmpty)
                    Text(
                      item.title!,
                      style: TextStyle(
                          fontSize: MySize.size26!,
                          color: Colors.white),
                    ),
                  Text(
                    item.text,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
              subtitle: item.subtitle!.isNotEmpty
                  ? Text(
                item.subtitle!,
                style: const TextStyle(color: Colors.white60),
              )
                  : null,
              value: _isChecked[index],
              onChanged: (value) => setState(() {
                _isChecked[index] = value!;
              })),
        );
      },
    );
  }
}
