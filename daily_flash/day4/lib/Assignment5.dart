import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Assignment5();
  }
}

class _Assignment5 extends State {
  Color btnColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Assignment 5"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: btnColor,
          onPressed: () {
            btnColor = Colors.purple;
            setState(() {});
          },
          child: GestureDetector(
              child: const Text(
            "Press",
            style: TextStyle(color: Colors.white),
          )),
        ));
  }
}
