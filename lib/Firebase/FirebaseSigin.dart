import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Signup/SignUpStyle.dart';

class FirebaseSignIn extends StatefulWidget {
  const FirebaseSignIn({super.key});

  @override
  State<FirebaseSignIn> createState() => _FirebaseSignUpState();
}

class _FirebaseSignUpState extends State<FirebaseSignIn> {
  bool isVisible = true;
  TextEditingController _emailTextField = TextEditingController();
  TextEditingController _passwordTextField = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                spaceWidget(height: 19),
                Text("Let’s Get Started!", style: letStartStyle),
                spaceWidget(height: 24),
                Text(
                  "Name",
                  style: titleStyle,
                ),
                spaceWidget(height: 9),
                TextFormField(
                    controller: _emailTextField,
                    decoration: textFieldDecoration("hello@gmail.com")),
                spaceWidget(),
                Text(
                  "Password",
                  style: titleStyle,
                ),
                spaceWidget(height: 9),
                TextFormField(
                  controller: _passwordTextField,
                  obscureText: isVisible,
                  decoration: InputDecoration(
                      hintText: "6+ Characters, 1 Capital letter",
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Container(
                          child: !isVisible
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                      ),
                      hintStyle: hintTextStyle,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  // decoration:
                  //     textFieldDecoration("6+ Characters, 1 Capital letter")
                ),
                spaceWidget(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: TextButton(
                          onPressed: () {
                            signInTheUser();
                          },
                          child: Container(
                              alignment: Alignment.center,
                              width: 280,
                              height: 50,
                              child: Text("Sign In", style: buttonTextStyle),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(500, 89, 86, 233),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Have an account?"),
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            child: Text("Sign In"),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }

  Widget spaceWidget({double height = 15}) {
    return SizedBox(
      height: height,
    );
  }

  InputDecoration textFieldDecoration(String hintText) {
    return InputDecoration(
        hintText: hintText,
        hintStyle: hintTextStyle,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))));
  }

  void signInTheUser() async {
    try {
      final response = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailTextField.text, password: _passwordTextField.text);
      showAlertMessage("User sign success");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        showAlertMessage("No user found for that email.");
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        showAlertMessage("Wrong password provided for that user.");
      }
    } catch (e) {
      print(e);
      showAlertMessage("${e.toString()}");
    }

    // if (response.statusCode == 200) {
    //   print(response.data);
    //   final statusValue = response.data["status"] ?? 100;
    //   if (statusValue == 200) {
    //     //registration success
    //     Navigator.pushNamed(context, "/todoTask");
    //   } else {
    //     //registration fail
    //   }
    //   showAlertMessage(response.data["message"] ?? "");
    //   //{status: 200, message: user registered successfully}
    // } else {}
  }

  showAlertMessage(String message) {
    final alert = AlertDialog(
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Ok"))
      ],
      title: Text("Alert!"),
      content: Text(message),
    );

    showDialog(
      context: context,
      builder: (context) {
        return alert;
      },
    );
  }
}

/*
splash -> login -> home
splash -> home 


news-

title
subtitle
image attachment -> storate

firestore


news get 

 */