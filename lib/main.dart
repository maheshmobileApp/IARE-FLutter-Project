import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: Container(
        // color: Colors.green,
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
            border:
                Border.all(width: 10, color: Color.fromRGBO(46, 134, 193, 1))),
        //margin: EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 30),
        //  width: 200,
        // height: 100,
        child: Text(
          "Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows. First described in 2015, Flutter was released in May 2017",
          // maxLines: 3,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
            // wordSpacing: 10
            // letterSpacing: 7
          ),
        ),
      ),
    ),
  ));
}

//main -> runApp()-> MaterialApp-> home-> ScaffoldWidget 
/*

MaterialApp(
    home: Scaffold(
        body: Container(
      margin: EdgeInsets.all(10),
      color: Colors.red,
      child: Container(
          margin: EdgeInsets.all(10),
        //  padding: EdgeInsets.all(50),
          color: Colors.green,
          height: 300,
          width: 300,
          alignment: Alignment.topRight,
          child: Text("Hello")),
    )),
  )
 */