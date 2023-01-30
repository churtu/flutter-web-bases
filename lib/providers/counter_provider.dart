import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  set counter( int counter ){
    _counter = counter;
    notifyListeners();
  }

  void increment() => counter = counter + 1 ;
  void decrement() => counter = counter - 1;
}