import 'package:flutter/material.dart';

class MyTheme with ChangeNotifier {
  static bool _isDark = true;

  ThemeMode currentTheme() {
    return _isDark ? ThemeMode.light : ThemeMode.dark;
  }

  void switchTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
