import 'package:aug_9pm_class/Firebase/NewsCreation.dart';
import 'package:aug_9pm_class/GetApiCall/GetApiCall+modelclass+ListView.dart';
import 'package:aug_9pm_class/Navigation/FirstScreen.dart';
import 'package:aug_9pm_class/Navigation/SecondScreen.dart';
import 'package:aug_9pm_class/Navigation/ThirsScreen.dart';
import 'package:aug_9pm_class/Provider/counterProvider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ColumnAndRow/ColumnAndRow.dart';
import 'Login/LoginScreen.dart';
import 'ListView/ListView.dart';
import 'ListView/ListViewBuilder.dart';
import 'CounterAppWithStatefullWidget/CounterAppWithStatefullWidget.dart';
import 'TodoTaskWithStatefullwidtet/TodoTaskWithStatefullWidget.dart';
import 'GetApiCall/GetApiCallSample.dart';
import 'Signup/SignupPage.dart';
import 'GetApiCall/GetApiCall+ListView.dart';
import 'ValueListenableBuilder/CounterApp.dart';
import 'Provider/counterAppWithProvider.dart';
import 'firebase_options.dart';
import 'Firebase/FirebaseSignup.dart';
import 'Firebase/FirebaseSigin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CounterProvider()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/firebaseSigin",
      routes: {
        "/firstScreen": (context) => FirstScreen(),
        "/secondScreen": (context) => SecondScreen(),
        "/thirdScreen": (context) => ThirdScreen(),
        "/listView": (context) => ListViewScreen(),
        "/listViewBuilder": (context) => ListViewBuilderScreen(),
        "/counterAppWithStatefullWidtet": (context) =>
            CounterAppWithStatefullWidget(),
        "/todoTask": (context) => TodoTaskWithStatefullWidget(),
        "/getApiCall": (context) => GetApiCallSample(),
        "/SignupScreen": (context) => SignupPage(),
        "/doctorsList": (context) => GetApiCallListView(),
        "/doctorsModelClassListview": (context) =>
            GetApiCallModelClassListView(),
        "/counterAppWithValueListenble": (context) => CounterApp(),
        "/counterAppWithProvider": (context) => CounterAppWithProvider(),
        "/firebaseSignup": (context) => FirebaseSignUp(),
        "/firebaseSigin": (context) => FirebaseSignIn(),
        "/newsCreation": (context) => NewsCreation(),
      },
    ),
  ));
}

//main -> runApp()-> MaterialApp-> home-> ScaffoldWidget
/*

Container(
        // color: Colors.green,
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(50),
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
 */
