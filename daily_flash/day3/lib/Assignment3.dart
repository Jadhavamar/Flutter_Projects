import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Assignment3State();
  }
}

class _Assignment3State extends State {
  bool flg = false;
  Color brColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 3"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            flg = !flg;
            brColor = flg ? Colors.green : Colors.red;
            setState(() {});
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey[300],
              border: Border.all(
                color: brColor,
                width: 15,
              ),
            ),
            padding: const EdgeInsets.all(15),
            height: 300,
            width: 300,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
