import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 5"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: [.5, .5],
              colors: [Colors.blue, Colors.green],
            ),
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          padding: const EdgeInsets.all(15),
          height: 200,
          width: 300,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
