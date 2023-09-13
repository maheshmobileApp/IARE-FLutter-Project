import 'package:flutter/material.dart';

class TodoTaskWithStatefullWidget extends StatefulWidget {
  const TodoTaskWithStatefullWidget({Key? key}) : super(key: key);

  @override
  _TodoTaskWithStatefullWidgetState createState() =>
      _TodoTaskWithStatefullWidgetState();
}

class _TodoTaskWithStatefullWidgetState
    extends State<TodoTaskWithStatefullWidget> {
  TextEditingController _taskController = TextEditingController();
  List<String> taskList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TodoTask")),
      body: Container(
          child: Column(
        children: [
          TextFormField(
            controller: _taskController,
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  taskList.add(_taskController.text);
                });
              },
              child: Text("Submit")),
          Expanded(
            child: ListView.builder(
              itemCount: taskList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 75,
                    color: Colors.green,
                    child: Text(
                      taskList[index],
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}

/*

Textfiled -> enter task 
submit -> in this action task will add to listview

List<String> taskList = [];

setState(){
taskList.add()
}


 */