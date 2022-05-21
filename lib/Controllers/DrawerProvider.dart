
import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier{
  int index = 0;

  updatePage(int pageIndex){
    index = pageIndex;
    notifyListeners();
  }
}