import 'package:flutter/widgets.dart';

class Isvisable extends ChangeNotifier{
  String txt = "";
  String txtC = "";
  bool isToggled = false;
  void Visable(){
      txt = isToggled? "hide" : "Show";
      txtC = isToggled? "is Visable" : " ";
      isToggled = !isToggled;
      notifyListeners();
  }
}