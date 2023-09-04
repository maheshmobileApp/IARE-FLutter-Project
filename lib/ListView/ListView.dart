import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State<ListViewScreen> {
  List<String> states = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jammu and Kashmir",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttarakhand",
    "Uttar Pradesh",
    "West Bengal",
    "Andaman and Nicobar Islands",
    "Chandigarh",
    "Dadra and Nagar Haveli",
    "Daman and Diu",
    "Delhi",
    "Lakshadweep",
    "Puducherry"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
      body: Container(
          child: ListView(
        children: List.generate(states.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              height: 75,
              color: Colors.green,
              child: Text(
                states[index],
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Colors.white),
              ),
            ),
          );
        }),
      )),
    );
  }
}


//states list of india 

/*


ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //margin: EdgeInsets.all(10),
              height: 100,
              width: 200,
              color: Colors.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //margin: EdgeInsets.all(10),

              height: 100,
              width: 200,
              color: const Color.fromARGB(255, 85, 64, 62),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //margin: EdgeInsets.all(10),

              height: 100,
              width: 200,
              color: const Color.fromARGB(255, 98, 54, 244),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //margin: EdgeInsets.all(10),

              height: 100,
              width: 200,
              color: const Color.fromARGB(255, 244, 54, 177),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //margin: EdgeInsets.all(10),

              height: 100,
              width: 200,
              color: const Color.fromARGB(255, 54, 244, 95),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //margin: EdgeInsets.all(10),

              height: 100,
              width: 200,
              color: const Color.fromARGB(255, 216, 244, 54),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //margin: EdgeInsets.all(10),

              height: 100,
              width: 200,
              color: Colors.red,
            ),
          ),
        ],
      )
 */