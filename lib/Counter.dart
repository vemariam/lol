import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'CounterProvider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    var op = Provider.of<BtnProviderr>(context ,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: 
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Consumer(
                builder: (context, BtnProviderr value, child) {
                  return FloatingActionButton(onPressed: (){
                    op.onpress();
                  } , child:Text("Counter: ${value.num}") ,

                  );
                },

              ),
            ],
          ),
        ),
      ),
    );
  }
}
