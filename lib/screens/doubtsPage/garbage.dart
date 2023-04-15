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
        title: Text("Doubt page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 50,
                width: size.width,
                decoration: BoxDecoration(color: Colors.black),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.white,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50))),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
