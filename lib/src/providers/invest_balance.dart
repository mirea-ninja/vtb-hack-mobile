import 'package:flutter/cupertino.dart';

class InvestBalance with ChangeNotifier {
  double balance = 0;

  void changeBalance(double sum) {
    balance += sum;
    notifyListeners();
  }

}