import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ChangeColorProvider.dart';

class ChangeColor extends StatelessWidget {
  const ChangeColor({super.key});

  @override
  Widget build(BuildContext context) {
    var op = Provider.of<TapProvider>(context ,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Tappp"),
      ),
      body:Consumer(builder: (BuildContext context,TapProvider value, Widget? child) {
        return Container(
        color: value.color,
          child: GestureDetector(
            onTap: () {
              value.Onpresss();
            },
          ),
        );
      },
      )
    );
  }
}
