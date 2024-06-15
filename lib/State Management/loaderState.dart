import 'package:flutter/material.dart';

class LoaderState extends ChangeNotifier {
  bool loaderIsViible = false;

  void makeLoaderVisible() {
    loaderIsViible = true;
    notifyListeners();
  }

  void makeLoaderInvisible() {
    loaderIsViible = false;
    notifyListeners();
  }
}
