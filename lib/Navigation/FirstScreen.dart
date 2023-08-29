import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen")),
      body: Container(
        color: Colors.green,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/thirdScreen");
          },
          child: Text("Next"),
        ),
      ),
    );
  }
}
