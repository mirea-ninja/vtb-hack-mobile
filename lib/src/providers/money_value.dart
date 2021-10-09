import 'package:flutter/cupertino.dart';

class MoneyValue with ChangeNotifier {
  /// инвестиции, отдых, дом, покупки
  List<double> goalsValues = [0, 0, 0, 0];
  double _maxBalance = 10000;

  set maxBalance(double value) {
    _maxBalance = value;
    notifyListeners();
  }

  double get maxBalance => _maxBalance;

  double get investBalance => goalsValues[0].toDouble();

  set investBalance(double value) => goalsValues[0] = value;

  void changeGoalsValues(int goal, int sum) {
    double tmpBalance = goalsValues[goal] + sum;
    double totalSum = goalsValues.reduce((a, b) => a + b);
    if (totalSum + sum <= maxBalance &&
        totalSum + sum >= 0 &&
        tmpBalance >= 0) {
      goalsValues[goal] = tmpBalance;
      notifyListeners();
    }
  }
}
