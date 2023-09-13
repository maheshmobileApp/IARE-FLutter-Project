import 'package:flutter/material.dart';

import 'SignUpStyle.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      body: Container(
        child: Column(children: [
          Text("Let’s Get Started!",style: letStartStyle),
          Text("Name"),
          TextFormField(),
          Text("Mobile Number"),
          TextFormField(),
          Text("Email Address"),
          TextFormField(),
          Text("Password"),
          TextFormField(),
          TextButton(onPressed: () {}, child: Text("Create Account")),
          Row(
            children: [
              Text("Have an account?"),
              TextButton(onPressed: () {}, child: Text("Sign In"))
            ],
          )
        ]),
      ),
    );
  }
}
