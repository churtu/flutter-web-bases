
import 'package:flutter/material.dart';

class NavigationService {
  
  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  Future navigateTo(String name){
    return navigationKey.currentState!.pushNamed(name);
  }

  void pop(String name){
    return navigationKey.currentState!.pop();
  }
}

// final navigationService = _NavigationService();