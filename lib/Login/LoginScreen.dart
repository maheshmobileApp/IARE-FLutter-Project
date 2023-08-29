import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Screen')),
      backgroundColor: Color.fromRGBO(204, 204, 255, 1),
      body: Container(
          child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Logo
            const Text(
              'Loing To Get Started ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  final bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);
                  if (value!.isEmpty) {
                    return "Please Enter Email";
                  } else if (emailValid == false) {
                    return "Please enter valid email";
                  } else {
                    return null;
                  }
                },
                controller: _emailController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    filled: true,
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter your email",
                    hintStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  validator: (value) {
                    final isValidPassword = RegExp(
                            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                        .hasMatch(value!);
                    if (value!.isEmpty) {
                      return "please enter password";
                    } else if (isValidPassword == false) {
                      return "password should contain at least one upper case,lower case,one digit, should 8 letters";
                    } else {
                      return null;
                    }
                  },
                  obscureText: true,
                  controller: _passwordController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off),
                      filled: true,
                      hintText: "Enter your password",
                      hintStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)))),
            ),

            TextButton(
                onPressed: () {
                  print("button clicekd");
                  if (_formKey.currentState!.validate()) {
                    print("form is validated");
                  } else {
                    print("form is not validate");
                  }
                },
                child: Container(
                    height: 45,
                    width: 250,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text(
                      "Login Action",
                      style: TextStyle(color: Colors.white),
                    )))
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextFormField(
            //       maxLines: 5,
            //       decoration: InputDecoration(
            //           filled: true,
            //           hintText: "Enter your password",
            //           hintStyle:
            //               TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            //           fillColor: Colors.white,
            //           border: OutlineInputBorder(
            //               borderRadius: BorderRadius.circular(8)))),
            // )
          ],
        ),
      )),
    );
  }
}

/*

Login screen

Logo
Title
TextFileds
Button
forgotpassword



 */