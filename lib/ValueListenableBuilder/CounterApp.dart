import 'package:flutter/material.dart';

class CounterApp extends StatelessWidget {
  CounterApp({Key? key}) : super(key: key);
//  int? counterValue;
  ValueNotifier counterValue = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    print("builder method called");
    return Scaffold(
      appBar: AppBar(title: Text("Counter App with valuelistenable builder")),
      body: Column(
        children: [
          Container(),
          ValueListenableBuilder(
            valueListenable: counterValue,
            builder: (context, value, child) {
              return Center(
                  child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        counterValue.value++;
                      },
                      child: Text("+")),
                  Text("${counterValue.value}"),
                  TextButton(
                      onPressed: () {
                        counterValue.value--;
                      },
                      child: Text("-"))
                ],
              ));
            },
          ),
        ],
      ),
    );
  }

  /*
  define the counter value ->
  Increment
  Decrement
  display the counter value
  
   */
}
