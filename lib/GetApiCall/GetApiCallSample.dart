import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class GetApiCallSample extends StatefulWidget {
  const GetApiCallSample({Key? key}) : super(key: key);

  @override
  _GetApiCallSampleState createState() => _GetApiCallSampleState();
}

class _GetApiCallSampleState extends State<GetApiCallSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("api call"),),
      body: Container(),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDashboardDataFromServer();
  }

  getDashboardDataFromServer() async {
/*
REQUEST:
Base URL: https://doctopad-a2d-dev.el.r.appspot.com/
End Point : api/v1/dashboard
Method Type : GET
Body (POST,PUT,OPTIOM,PATCH): no
Parameters(get): no
Headders: no
Authorization: no
 */
    final baseUrl = "https://doctopad-a2d-dev.el.r.appspot.com/"; //step: 1
    final endPoint = "api/v1/dashboard"; //step: 2
    final requestUrl = baseUrl + endPoint; //step: 3

    //step 4: create dio object
    final dio = Dio();
    //step 5: call the api
    final response = await dio.get(requestUrl);

    if (response.statusCode == 200) {
      print(response.data);
    } else {}
  }
}
