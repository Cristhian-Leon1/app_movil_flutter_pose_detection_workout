import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData) {
    _loadTheme();
  }

  getTheme() => _themeData;

  Future<void> setTheme(ThemeData theme) async {
    final prefs = await SharedPreferences.getInstance();
    if (theme == ThemeData.dark()) {
      prefs.setBool('isDark', true);
      _themeData = ThemeData.dark();
    } else {
      prefs.setBool('isDark', false);
      _themeData = ThemeData.light();
    }
    notifyListeners();
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final isDark = prefs.getBool('isDark') ?? false;
    _themeData = isDark ? ThemeData.dark() : ThemeData.light();
    notifyListeners();
  }
}