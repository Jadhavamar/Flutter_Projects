// 10.In the screen, add a container with size (width: 300,height:300). Give
// colour to the container. Make container’s top-left and bottom-right
// corners rounded with radius 20.

import 'package:flutter/material.dart';

class Program10 extends StatelessWidget {
  const Program10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("program8")),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
      ),
    );
  }
}