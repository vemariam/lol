import 'package:flutter/widgets.dart';

class BtnProviderr extends ChangeNotifier{
  int num = 0;
  void onpress(){
    num++;
    notifyListeners();
  }
}
