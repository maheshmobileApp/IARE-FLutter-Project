import 'package:flutter/material.dart';

class ColumnAndRow extends StatefulWidget {
  const ColumnAndRow({Key? key}) : super(key: key);

  @override
  _ColumnAndRowState createState() => _ColumnAndRowState();
}

class _ColumnAndRowState extends State<ColumnAndRow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.start,
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
                // SizedBox(height: 20,),
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //margin: EdgeInsets.all(10),
                    height: 100,
                    width: 200,
                    color: Colors.green,
                  ),
                ),
                //SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //margin: EdgeInsets.all(10),
                    height: 100,
                    width: 200,
                    color: Colors.orange,
                  ),
                )
              ]),
        ));
  }
}
