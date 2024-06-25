import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 2"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://i.pinimg.com/736x/43/67/2a/43672ae49b07198f4b2857fd2d4bd15f.jpg"))),
            padding: const EdgeInsets.all(15),
            height: 300,
            width: 300,
            alignment: Alignment.center,
            child: const Text(
              "Image",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            )),
      ),
    );
  }
}
