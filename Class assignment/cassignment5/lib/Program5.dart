//In the screen, show 3 asset images of size (width: 150, height: 150).

import 'package:flutter/material.dart';

class Program5 extends StatelessWidget {
  const Program5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("program5"),
      ),
      body: Center(
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset(
                  "images/img2.JPG",
                  height: 150,
                  width: 150,
                ),
                Image.asset(
                  "images/img1.HEIC",
                  height: 150,
                  width: 150,
                ),
                Image.asset(
                  "images/img3.HEIC",
                  height: 150,
                  width: 150,
                ),
              ],
            )),
      ),
    );
  }
}