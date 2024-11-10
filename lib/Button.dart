import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'BtnProvider.dart';
class BtnUI extends StatelessWidget {
  const BtnUI({super.key});

  @override
  Widget build(BuildContext context) {
    var t = Provider.of<BtnProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(title: Text("ToggleButton"),),
      body:
      Column(children: [
        Consumer(
          builder: (context, BtnProvider value, child) {
            return MaterialButton(onPressed: (){
              value.Onpress();
            } , child:Text(value.txt ) ,
              color: value.color,
            );
          },

        ),
      ],),
    );
  }
}
