import 'package:flutter/cupertino.dart';

class MoneyValue with ChangeNotifier {
  List<int> goalsValues = [0, 0, 0, 0];
  int _maxBalance = 70000;

  set maxBalance(int value) {
    _maxBalance = value;
    notifyListeners();
  }

  int get maxBalance => _maxBalance;

  void changeGoalsValues(int goal, int sum) {
    int tmpBalance = goalsValues[goal] + sum;
    int totalSum = goalsValues.reduce((a, b) => a + b);
    if (totalSum + sum <= maxBalance && totalSum + sum >= 0 && tmpBalance >= 0) {
      goalsValues[goal] = tmpBalance;
      notifyListeners();
    }
  }
}
