//In the screen, add a container with size (width: 300,height:300). Also, add
// a border to that Container, the border must be of color red.

import 'package:flutter/material.dart';

class Program8 extends StatelessWidget {
  const Program8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("program8")),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 3,
            ),
          ),
        ),
      ),
    );
  }
}
