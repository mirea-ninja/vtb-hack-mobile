import 'package:flutter/cupertino.dart';

class InvestBalance with ChangeNotifier {
  double balance = 0;
  double portfolioValue = 0;
  int dayCounter = 1;

  void changeBalance(double sum) {
    balance += sum;
    notifyListeners();
  }

  void changePortfolioValue(double sum) {
    portfolioValue += sum;
    notifyListeners();
  }

  void incDay() {
    dayCounter++;
  }

}