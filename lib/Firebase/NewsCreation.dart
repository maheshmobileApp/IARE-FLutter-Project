import 'package:aug_9pm_class/Signup/SignUpStyle.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewsCreation extends StatefulWidget {
  const NewsCreation({super.key});

  @override
  State<NewsCreation> createState() => _NewsCreationState();
}

class _NewsCreationState extends State<NewsCreation> {
  TextEditingController _newsTitle = TextEditingController();
  TextEditingController _newsDesciption = TextEditingController();
  TextEditingController _category = TextEditingController();
  TextEditingController _location = TextEditingController();
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
                Text("Let’s Create News !", style: letStartStyle),
                spaceWidget(height: 24),
                Text(
                  "News Title",
                  style: titleStyle,
                ),
                spaceWidget(height: 9),
                TextFormField(
                    controller: _newsTitle,
                    decoration: textFieldDecoration("News Title")),
                spaceWidget(),
                Text(
                  "News Description",
                  style: titleStyle,
                ),
                spaceWidget(height: 9),
                TextFormField(
                  maxLines: 5,
                  controller: _newsDesciption,
                  decoration: InputDecoration(
                      hintText: "Eneter descrition",
                      hintStyle: hintTextStyle,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  // decoration:
                  //     textFieldDecoration("6+ Characters, 1 Capital letter")
                ),
                spaceWidget(),
                Text(
                  "News Category",
                  style: titleStyle,
                ),
                spaceWidget(height: 9),
                TextFormField(
                    controller: _category,
                    decoration: textFieldDecoration("Enter Category")),
                spaceWidget(),
                Text(
                  "Location",
                  style: titleStyle,
                ),
                spaceWidget(height: 9),
                TextFormField(
                  controller: _location,
                  decoration: InputDecoration(
                      hintText: "Eneter Location",
                      hintStyle: hintTextStyle,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)))),
                  // decoration:
                  //     textFieldDecoration("6+ Characters, 1 Capital letter")
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: TextButton(
                          onPressed: () {
                            createNews();
                          },
                          child: Container(
                              alignment: Alignment.center,
                              width: 280,
                              height: 50,
                              child: Text("Save News", style: buttonTextStyle),
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

  void createNews() {
    final newsPayload = {
      "category": _category.text,
      "location": _location.text,
      "news_description": _newsDesciption.text,
      "news_image": "",
      "news_title": _newsTitle.text
    };
    CollectionReference news = FirebaseFirestore.instance.collection('news');
    news
        .add(newsPayload)
        .then((value) => print("news  Added"))
        .catchError((error) => print("Failed to add news: $error"));
  }
}


/*
title
decription
attachment -> camera -> to upload image to storage


submit - > sumbit the data in firestore in the form of collection


 */