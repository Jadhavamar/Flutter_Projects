import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 1"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          color: Colors.teal,
          padding: const EdgeInsets.all(15),
          height: 300,
          width: 300,
          alignment: Alignment.center,
          child: Image.network(
            "https://i.pinimg.com/736x/43/67/2a/43672ae49b07198f4b2857fd2d4bd15f.jpg",
          ),
        ),
      ),
    );
  }
}
