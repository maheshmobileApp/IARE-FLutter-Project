import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Third Screen")),
      body: Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Back",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/firstScreen", (route) => false);
                //Navigator.popUntil(context, (route) => false);
              },
              child: Text(
                "Pop To firstScreen",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
