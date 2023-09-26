import 'package:aug_9pm_class/GetApiCall/DoctorsModelClass.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GetApiCallModelClassListView extends StatefulWidget {
  const GetApiCallModelClassListView({Key? key}) : super(key: key);

  @override
  _GetApiCallListViewState createState() => _GetApiCallListViewState();
}

class _GetApiCallListViewState extends State<GetApiCallModelClassListView> {
  List<Body> doctorsList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: doctorsList.length,
        itemBuilder: (context, index) {
          final doctorData = doctorsList[index];
          final name = doctorData.name;
          final emailId = doctorData.emailId;
          final phoneNo = doctorData.mobileNo;
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Name: $name"),
                  Text("Email: $emailId"),
                  Text("Mobile No: $phoneNo")
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  getDoctorsFromApi() async {
/*
REQUEST:
Base URL: https://doctopad-a2d-dev.el.r.appspot.com/
End Point : api/v1/doctors
Method Type : GET
Body (POST,PUT,OPTIOM,PATCH): no
Parameters(get): no
Headders: no
Authorization: no
 */
    final baseUrl = "https://doctopad-a2d-dev.el.r.appspot.com/"; //step: 1
    final endPoint = "api/v1/doctors"; //step: 2
    final requestUrl = baseUrl + endPoint; //step: 3

    //step 4: create dio object
    final dio = Dio();
    //step 5: call the api
    final response = await dio.get(requestUrl);

    if (response.statusCode == 200) {
      print(response.data);
      final doctorsData = DoctosModelClass.fromJson(response.data);
      final bodyData = doctorsData.body;
      setState(() {
        doctorsList = bodyData ?? [];
        //Expected a value of type 'List<Map<String, dynamic>>', but got one of type'List<dynamic>'
      });
    } else {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDoctorsFromApi();
  }
}

/*
https://doctopad-a2d-dev.el.r.appspot.com/api/v1/doctors

After get the response from api and disply the response in to the ListView

1. Create Listview

2. Call the api

3.

{


Copy the response json from post man and go to to jsonToDart website past into box


  
}

 */