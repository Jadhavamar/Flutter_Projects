import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  Assignment4({super.key});

  @override
  State<StatefulWidget> createState() {
    return Assignment2State();
  }
}

class Assignment2State extends State {
  bool searchBoxFlg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Assignment 4"), backgroundColor: Colors.blue),
      body: Center(
        child: Container(
          width: 300,
          child: const TextField(
            maxLength: 20,
            decoration: InputDecoration(
              labelText: "Enter your name",
              hintStyle: TextStyle(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
