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
        floatingActionButton: ElevatedButton(
            onPressed: () {},
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Sandesh"),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.person)
              ],
            )));
  }
}
