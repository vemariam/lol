import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskpro/Text.dart';

class TextUI extends StatefulWidget {
  const TextUI({super.key});

  @override
  State<TextUI> createState() => _TextUIState();
}
class _TextUIState extends State<TextUI> {
  @override
  Widget build(BuildContext context) {
    var op = Provider.of<Textt>(context ,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("TextInputExample"),
      ),
      body: 
      Column(
        children: [
          TextFormField(
            onChanged: op.Input,
            decoration: InputDecoration(
              labelText: "Enter Your Name"
            )
          ),
          Consumer(builder: (context,Textt value, Widget? child) {
            return Text("Your Typed: ${value.word}");
          },)
        ],
      ),
      
    );
  }
}
