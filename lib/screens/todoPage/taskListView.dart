import 'package:cognify3/constants.dart';
import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<String> taskList = ["workout", 'Home', 'Favorite', 'cart'];
  late final IconData icon;
  bool toggle = false;
  final IconData iconSelected = Icons.square;
  final IconData iconUnSelected = Icons.square_outlined;

  @override
  Widget build(BuildContext context) {
    var icon;
    return ListView.builder(
      itemCount: taskList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {},
            title: Text(
              taskList[index],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            splashColor: Constants.primaryColor,
            trailing: IconButton(
              icon: toggle
                  ? Icon(
                      Icons.square_outlined,
                      color: Colors.red,
                    )
                  : Icon(
                      Icons.square,
                      color: Colors.green,
                    ),
              onPressed: () {
                setState(() {
                  toggle = !toggle;
                });
              },
            ),
            shape: Border.fromBorderSide(BorderSide(
              width: 2,
              color: Colors.black,
            )),
          ),
        );
      },
    );
  }
}
