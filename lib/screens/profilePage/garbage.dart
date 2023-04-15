import 'package:cognify3/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTime extends StatefulWidget {
  const DateTime({super.key});

  @override
  State<DateTime> createState() => _DateTimeState();
  
  static now() {}
}

class _DateTimeState extends State<DateTime> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final time = DateTime.now();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Constants.primaryColor,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 400,
              color: Colors.pink,
              child: Column(
                children: [
                  Text(
                    '${DateFormat('jms').format(time)}',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.home,
                        size: 40,
                      ))
                ],
              ),
            )
          ],
        )));
  }
}
