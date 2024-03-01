import 'package:flutter/material.dart';

class ColorsProvide extends ChangeNotifier {
  Color buttonColors = Colors.white;

  void colorYellow() {
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

  void colorRed() {
    buttonColors = Colors.red;
    notifyListeners();
  }
}
