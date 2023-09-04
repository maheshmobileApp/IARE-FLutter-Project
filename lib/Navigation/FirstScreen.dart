import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController _dataController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Screen")),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.green,
        child: Center(
          child: Column(
            children: [
              TextFormField(
                
                controller: _dataController,
              ),
              TextFormField(
                controller: _addressController,
              ),
              TextFormField(
                controller: _ageController,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/secondScreen", arguments: {
                    "name": _dataController.text,
                    "address": _addressController.text,
                    "age": _ageController.text
                  });
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
