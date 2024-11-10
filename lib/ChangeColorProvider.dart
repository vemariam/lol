import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TapProvider extends ChangeNotifier{
  Color color = Colors.red;
  bool isToggled = false;
  void Onpresss(){
    color = isToggled? Colors.green : Colors.red;
    isToggled = !isToggled;
    notifyListeners();
  }

}