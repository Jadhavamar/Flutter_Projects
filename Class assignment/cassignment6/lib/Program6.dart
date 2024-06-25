//Create a screen in which add 10 colourful containers vertically and make
//  the screen scrollable.

import 'package:flutter/material.dart';

class Program6 extends StatelessWidget {
  const Program6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("program5"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              height: 150,
            ),
            Container(
              color: Colors.green,
              height: 150,
            ),
            Container(
              color: Colors.red,
              height: 150,
            ),
            Container(
              color: Colors.blue,
              height: 150,
            ),
            Container(
              color: Colors.orange,
              height: 150,
            ),
            Container(
              color: Colors.lime,
              height: 150,
            ),
            Container(
              color: const Color.fromARGB(255, 232, 136, 219),
              height: 150,
            ),
            Container(
              color: Colors.amber,
              height: 150,
            ),
            Container(
              color: Colors.black,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
