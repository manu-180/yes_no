import 'package:app_yes_no/options/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  int _seleccionarColor = 1;

  int get seleccionarColor => _seleccionarColor;

  ThemeData get theme => AppTheme(seleccionarColor: seleccionarColor).theme();

  void toggleTheme() {
    _seleccionarColor = (_seleccionarColor + 1) % colorThemes.length;
    notifyListeners();
  }
}