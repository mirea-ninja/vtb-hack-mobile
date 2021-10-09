import 'package:flutter/cupertino.dart';
import 'package:vtb_hack_mobile/src/easy_start/models/stocks_model.dart';

class StocksPortfolio with ChangeNotifier {
  List<StocksModel> stocks = [];

  void addStock(StocksModel stock) {
    stocks.add(stock);
    notifyListeners();
  }

  void removeStock(StocksModel stock) {
    for (int i = 0; i < stocks.length; i++) {
      if (stocks[i].title == stock.title) {
        stocks.removeAt(i);
        notifyListeners();
      }
    }
  }

  double getStocksPrice() {
    double sum = 0;
    for (StocksModel stock in stocks) {
      sum += stock.price;
    }
    return sum;
  }
}
