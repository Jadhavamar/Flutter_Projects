import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Assignment5();
  }
}

class _Assignment5 extends State {
  Color firstBoxColor = Colors.red;
  Color secondBoxColor = Colors.green;
  Color thirdBoxColor = Colors.blue;

  void colorChange(int i) {
    if (i == 1) {
      firstBoxColor = Colors.black;
      secondBoxColor = Colors.white;
      thirdBoxColor = Colors.white;
    } else if (i == 2) {
      firstBoxColor = Colors.white;
      secondBoxColor = Colors.black;
      thirdBoxColor = Colors.white;
    } else if (i == 3) {
      firstBoxColor = Colors.white;
      secondBoxColor = Colors.white;
      thirdBoxColor = Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 5"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                colorChange(1);
                setState(() {});
              },
              child: Container(
                width: 100,
                height: 100,
                color: firstBoxColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                colorChange(2);
                setState(() {});
              },
              child: Container(
                width: 100,
                height: 100,
                color: secondBoxColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                colorChange(3);
                setState(() {});
              },
              child: Container(
                width: 100,
                height: 100,
                color: thirdBoxColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
