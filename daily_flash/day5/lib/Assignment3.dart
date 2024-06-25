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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.cyan, width: 5),
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(188, 39, 39, 39),
                        offset: Offset(5, 10),
                        blurRadius: 10,
                        spreadRadius: 1)
                  ]),
              child: Column(
                children: [
                  Image.asset(
                    "assets/profileImg.jpeg",
                    width: 300,
                  ),
                  const Text(
                    "Sandesh Marathe",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
