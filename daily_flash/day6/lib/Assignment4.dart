import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(width: 2),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Container(height: 100, width: 100, color: Colors.red),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Container(height: 100, width: 100, color: Colors.purple),
            )
          ],
        ),
      )),
    );
  }
}
