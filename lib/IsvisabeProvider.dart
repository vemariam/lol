import 'package:flutter/widgets.dart';

class Isvisable extends ChangeNotifier{
  String txt = "";
  String txtC = "";
  bool isToggled = false;
  void Visable(){
      txt = isToggled? "Hide" : "Show";
      txtC = isToggled? "Is Visable" : " ";
      isToggled = !isToggled;
      notifyListeners();
  }
}