// lib/providers/generator_provider.dart

import 'package:flutter/material.dart';

class GeneratorProvider extends ChangeNotifier {
  int _length = 20;

  bool _uppercase = true;
  bool _lowercase = true;
  bool _numbers = true;
  bool _symbols = true;

  String _generatedPassword = '';

  int get length => _length;

  bool get uppercase => _uppercase;

  bool get lowercase => _lowercase;

  bool get numbers => _numbers;

  bool get symbols => _symbols;

  String get generatedPassword => _generatedPassword;

  void setLength(int value) {
    _length = value;
    notifyListeners();
  }

  void toggleUppercase() {
    _uppercase = !_uppercase;
    notifyListeners();
  }

  void toggleLowercase() {
    _lowercase = !_lowercase;
    notifyListeners();
  }

  void toggleNumbers() {
    _numbers = !_numbers;
    notifyListeners();
  }

  void toggleSymbols() {
    _symbols = !_symbols;
    notifyListeners();
  }

  void setGeneratedPassword(String password) {
    _generatedPassword = password;
    notifyListeners();
  }
}