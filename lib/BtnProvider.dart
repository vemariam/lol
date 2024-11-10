import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BtnProvider extends ChangeNotifier{
  Color color = Colors.red;
  bool isToggled = false;
  String txt = "off ";
  void Onpress(){
   color = isToggled? Colors.green : Colors.red;
   txt = isToggled? "on" : "off";
   isToggled = !isToggled;
    notifyListeners();
  }

}