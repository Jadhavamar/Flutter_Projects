import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Assignment4State();
  }
}

class _Assignment4State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(offset: Offset(0, -9), blurRadius: 5, spreadRadius: 0)
              ],
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(15),
          height: 200,
          width: 300,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
