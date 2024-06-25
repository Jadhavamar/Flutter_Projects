//Create a screen with a deep purple app bar titled "Hello Core2web" and in the
//centre of the body create a blue container with (width: 360, height: 200).
import 'package:flutter/material.dart';

class Program3 extends StatelessWidget {
  const Program3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hellow Core2Webb"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          height: 360,
          width: 200,
          color: Colors.blue,
        ),
      ),
    );
  }
}