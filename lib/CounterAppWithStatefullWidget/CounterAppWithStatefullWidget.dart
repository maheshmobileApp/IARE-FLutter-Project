import 'package:flutter/material.dart';

class CounterAppWithStatefullWidget extends StatefulWidget {
  const CounterAppWithStatefullWidget({Key? key}) : super(key: key);

  @override
  _CounterAppWithStatefullWidgetState createState() =>
      _CounterAppWithStatefullWidgetState();
}

class _CounterAppWithStatefullWidgetState
    extends State<CounterAppWithStatefullWidget> {
  int? counterValue;
  @override
  Widget build(BuildContext context) {
    print("called build method");
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
      body: Center(
          child: Row(
        children: [
          TextButton(
              onPressed: () {
                print(counterValue);
                setState(() {
                  var value = counterValue ?? 0;
                  counterValue = value + 1;
                });
                //counterValue = counterValue + 1;
              },
              child: Text("+")),
          Text("$counterValue"),
          TextButton(
              onPressed: () {
                setState(() {
                   var value = counterValue ?? 0;
                  counterValue = value - 1;
                });
                print(counterValue);
              },
              child: Text("-"))
        ],
      )),
    );
  }

//This method is the entry point of a widget. the initstaste() method intializes all the methods build method will depend upon.
//This is called only once in a widget's lifetime
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    counterValue = 0;
  }
}

/*


A statefull widget is used when some part of the ui must change dynamically during runtime. statefull widgets can redraw themselves multile time while the app is running


BuildContext: it provides information regarding which widget is to be build/re-build

setState() -> A state object is used to modify the user interface.

setState((){

})


initState () {

}
 */