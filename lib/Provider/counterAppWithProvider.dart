/*
view
provider
 */

//Counter app with provider
// view -> design the screen
//CounterProvider -> implement the business logic

import 'package:aug_9pm_class/Provider/counterProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterAppWithProvider extends StatelessWidget {
  const CounterAppWithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("builder method called");
    //Read the provider object
    // final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Counter App with Provider ")),
      body: Column(
        children: [
          Container(),
          Center(
              child: Row(
            children: [
              TextButton(
                  onPressed: () {
                    context.read<CounterProvider>().incrementCounter();
                    //   counterProvider.incrementCounter();
                  },
                  child: Text("+")),
                  //   Text("${counterProvider.counter}"),
              Text("${context.watch<CounterProvider>().counter}"),
              TextButton(
                  onPressed: () {
                    context.read<CounterProvider>().decrementCounter();
                    // counterProvider.decrementCounter();
                  },
                  child: Text("-"))
            ],
          )),
        ],
      ),
    );
  }
}

/*

s1-> install the provider
s2-> createe view class and design the screen as per the requirement
s3: create provider class extend with changenotifier
s4: implement the actions(increment,decrement)
s5: define the providers in main.dart 
s6: call the actions from view class (get the provider object in build method)

 */