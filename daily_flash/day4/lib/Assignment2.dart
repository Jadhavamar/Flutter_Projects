import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 200),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              elevation: 20,
              shadowColor: Colors.red,
              shape: const CircleBorder(
                  side: BorderSide(color: Colors.red, width: 5))),
          onPressed: () {},
          child: const Text("Click"),
        ),
      ),
    );
  }
}
