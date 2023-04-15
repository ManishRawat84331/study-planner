import 'package:cognify3/constants.dart';
import 'package:cognify3/screens/todoPage/taskListView.dart';
import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  List<String> taskList = ["workout", 'Home', 'Favorite', 'cart'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TO DO LIST"),
        backgroundColor: Constants.primaryColor,
      ),
      body: TaskList(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Constants.primaryColor,
        onPressed: () {
          // showDataAlert();
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  contentPadding: EdgeInsets.only(top: 10.0),
                  title: Text(
                    "Add Your Task",
                    style: TextStyle(fontSize: 50),
                  ),
                  content: Container(
                    height: 400,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                maxLines: 5,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Enter Task here',
                                    labelText: 'Type here '),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 60,
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  // fixedSize: Size(250, 50),
                                ),
                                child: Text(
                                  "Add",
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                );
              });
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}

void showDataAlert() {}
