import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 108, 187, 252),
        title: const Text("Assignment 2"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(
            Icons.person,
          ),
          Icon(
            Icons.message,
          ),
          Icon(
            Icons.settings,
          ),
        ],
      ),
    );
  }
}
