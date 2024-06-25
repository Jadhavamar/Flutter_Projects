//Create an AppBar, give an Icon at the end of the app bar, and give a title in
//the middle of the appbar.

import 'package:flutter/material.dart';

class Program2 extends StatelessWidget {
  const Program2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Center(child: Text("program1")),
      backgroundColor: Colors.red,
      actions: const [
        Icon(
          Icons.favorite,
        ),
        SizedBox(
          width: 20,
        ),
        Icon(Icons.save),
      ],
    ));
  }
}
