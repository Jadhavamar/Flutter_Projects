import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 3"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 232, 160, 245),
              border: Border.all(
                width: 3,
                color: const Color.fromARGB(255, 179, 27, 206),
              ),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30),
              )),
          height: 100,
          width: 100,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
