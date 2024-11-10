import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'IsvisabeProvider.dart';

class ISvisa extends StatelessWidget {
  const ISvisa({super.key});

  @override
  Widget build(BuildContext context) {
    var op = Provider.of<Isvisable>(context ,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Is visable"),
      ),
      body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer(builder: (BuildContext context, Isvisable value, Widget? child) { 
                 return Column(
                   children: [
                     Text("${value.txtC}"),
                     MaterialButton(onPressed: (){
                       value.Visable();
                     },
                       child: Text("${value.txt}", ),
                   ),
                   ],
                 );
              },),
            ],
          ),
        ),

      
    );
  }
}
