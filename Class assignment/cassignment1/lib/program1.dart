//Create an AppBar, add a title and add any 2 icons at the end of the appbar
//  and give color to the AppBar.

import 'package:flutter/material.dart';

class Program1 extends StatelessWidget {
  const Program1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("program2"),
        backgroundColor: Colors.red,
        actions: const [
          Icon(
            Icons.favorite,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.save),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
