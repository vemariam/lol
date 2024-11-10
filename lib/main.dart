import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'IsvisabeProvider.dart';
import 'Isvisable.dart';
import 'TextProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ChangeNotifierProvider(
          create: (context)=> Isvisable(),
          child:ISvisa(),

      ),
    );
  }
}
