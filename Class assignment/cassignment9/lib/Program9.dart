// In the screen, add a container with size (width: 300,height:300) and add a
// border to that Container, the border must be of color red. Also, add
// rounded corners to the container with a radius 20.

import 'package:flutter/material.dart';

class Program9 extends StatelessWidget {
  const Program9({super.key});

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
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
      ),
    );
  }
}