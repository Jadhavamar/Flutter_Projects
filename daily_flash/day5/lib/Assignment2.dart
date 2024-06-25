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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              child: Image.network(
                  "https://i.pinimg.com/564x/72/ce/d8/72ced85f11b598bc175d489037bfd64e.jpg"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              height: 100,
              child: Image.network(
                  "https://i.pinimg.com/564x/54/5e/01/545e01980edc0fbef9bc34b33a59b507.jpg"),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              height: 100,
              child: Image.network(
                  "https://i.pinimg.com/736x/d9/31/bb/d931bbf3e6dd65580b5b0d40c4f3c5cb.jpg"),
            )
          ],
        ),
      ),
    );
  }
}
