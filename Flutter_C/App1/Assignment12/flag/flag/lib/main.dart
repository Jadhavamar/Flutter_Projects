import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 80,
              width: 300,
              color: Colors.orange,
            ),
            Container(
              height: 80,
              width: 300,
              color: Colors.white,
              child: Image.asset("asset/download.jpeg"),
            ),
            Container(
              height: 80,
              width: 300,
              color: Colors.green,
            ),
          ]),
    )));
  }
}
