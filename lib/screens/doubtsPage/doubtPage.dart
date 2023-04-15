import 'package:cognify3/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

class DoubtPage extends StatefulWidget {
  const DoubtPage({super.key});

  @override
  State<DoubtPage> createState() => _DoubtPageState();
}

class _DoubtPageState extends State<DoubtPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.primaryColor,
        title: Text("Doubt page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "🔍   Search The Doubt",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
