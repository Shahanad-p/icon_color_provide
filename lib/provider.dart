import 'package:flutter/material.dart';

class ColorsProvide extends ChangeNotifier {
  Color buttonColors = Colors.white;

  void colorYello() {
    buttonColors = Colors.yellow;
    notifyListeners();
  }

  void colorGreen() {
    buttonColors = Colors.green;
    notifyListeners();
  }

  void colorPurple() {
    buttonColors = Colors.purple;
    notifyListeners();
  }
}
