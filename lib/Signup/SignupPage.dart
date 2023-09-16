import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'SignUpStyle.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isVisible = true;
  TextEditingController _nameTextField = TextEditingController();
  TextEditingController _lastNameTextField = TextEditingController();
  TextEditingController _emailTextField = TextEditingController();
  TextEditingController _phoneTextField = TextEditingController();
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
                  controller: _lastNameTextField,
                  decoration: textFieldDecoration("Last Name"),
                ),
                Text(
                  "Last Name",
                  style: titleStyle,
                ),
                spaceWidget(height: 9),
                TextFormField(
                  controller: _nameTextField,
                  decoration: textFieldDecoration("Name"),
                ),
                spaceWidget(),
                Text(
                  "Mobile Number",
                  style: titleStyle,
                ),
                spaceWidget(height: 9),
                TextFormField(
                  controller: _phoneTextField,
                  decoration: textFieldDecoration("Mobile Number"),
                ),
                spaceWidget(),
                Text(
                  "Email Address",
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
                            signUpTheUser();
                          },
                          child: Container(
                              alignment: Alignment.center,
                              width: 280,
                              height: 50,
                              child: Text("Create Account",
                                  style: buttonTextStyle),
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

  void signUpTheUser() async {
/*
REQUEST:
Base URL: http://13.50.208.195:3100/
End Point : api/v1/auth/signup
Method Type : POST
Body (POST,PUT,OPTIOM,PATCH): 
{
   "email":"mahesh@gmail.com",
    "password":"123456",
    "firstName":"m",
    "lastName":"n",
    "phoneNumber":"89952464649",
    "academyName":"tech academy",
    "orgId" : "mahesh16783"

}
Parameters(get): no
Headders: no
Authorization: no
 */
    final baseUrl = "http://13.50.208.195:3100/"; //step: 1
    final endPoint = "api/v1/auth/signup"; //step: 2
    final requestUrl = baseUrl + endPoint; //step: 3
    //step 4 create body (payload)
    final signupPayload = {
      "email": _emailTextField.text,
      "password": _passwordTextField.text,
      "firstName": _nameTextField.text,
      "lastName": _lastNameTextField.text,
      "phoneNumber": _phoneTextField.text,
      "academyName": "tech academy",
      "orgId": "mahesh16783"
    };

    //step 5: create dio object
    final dio = Dio();
    //step 6: call the api
    Loader.show(context, progressIndicator: CircularProgressIndicator());
    final response = await dio.post(requestUrl, data: signupPayload);

    Loader.hide();

    if (response.statusCode == 200) {
      print(response.data);
      final statusValue = response.data["status"] ?? 100;
      if (statusValue == 200) {
        //registration success
        Navigator.pushNamed(context, "/todoTask");
      } else {
        //registration fail
      }
      showAlertMessage(response.data["message"] ?? "");
      //{status: 200, message: user registered successfully}
    } else {}
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

Design the sign up screen as per the figma file: Done 
add the validation : task
show and hide the password : done
call the sign up api : done
verify the response 

{} -> json 
[] -> array
"" -> string

 */