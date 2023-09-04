import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(title: Text("Second Screen")),
      body: Container(
        color: Colors.green,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(data["name"]),
            Text(data["address"]),
            Text(data["age"]),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/thirdScreen");
              },
              child: Text(
                "Next",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Pop",
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
