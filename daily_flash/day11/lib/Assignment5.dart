import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  Assignment5({super.key});

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
          title: const Text("Assignment 5"), backgroundColor: Colors.blue),
      body: Center(
        child: Container(
          width: 300,
          child: const TextField(
            maxLines: 5,
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
