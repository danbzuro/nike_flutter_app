import 'package:flutter/material.dart';

class ShoeState with ChangeNotifier {
  String _image = 'assets/images/yellow.png';
  double _size = 9.0;

  String get shoeImage => this._image;
  set shoeImage(String value) {
    this._image = value;
    notifyListeners();
  }

  double get shoeSize => this._size;
  set shoeSize(double size) {
    this._size = size;
    notifyListeners();
  }
}
