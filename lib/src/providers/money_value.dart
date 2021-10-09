import 'package:flutter/cupertino.dart';

class MoneyValue with ChangeNotifier {
  List<int> goalsValues = [0, 0, 0, 0];
  double _maxBalance = 70000;

  set maxBalance(double value) {
    _maxBalance = value;
    notifyListeners();
  }

  double get maxBalance => _maxBalance;

  double get investBalance => goalsValues[0].toDouble();

  void changeGoalsValues(int goal, int sum) {
    int tmpBalance = goalsValues[goal] + sum;
    int totalSum = goalsValues.reduce((a, b) => a + b);
    if (totalSum + sum <= maxBalance && totalSum + sum >= 0 && tmpBalance >= 0) {
      goalsValues[goal] = tmpBalance;
      notifyListeners();
    }
  }
}
