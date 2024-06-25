import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Assignment5State();
  }
}

class _Assignment5State extends State {
  Color containerColor = const Color.fromARGB(255, 232, 160, 245);
  Color containerBorderColor = const Color.fromARGB(255, 179, 27, 206);

  bool flg = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              flg = !flg;
              containerColor = flg
                  ? const Color.fromARGB(255, 232, 160, 245)
                  : Color.fromARGB(255, 173, 160, 245);
              containerBorderColor = flg
                  ? const Color.fromARGB(255, 179, 27, 206)
                  : Color.fromARGB(255, 58, 85, 238);
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: containerColor,
                  border: Border.all(
                    width: 3,
                    color: containerBorderColor,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              height: 150,
              width: 150,
              alignment: Alignment.center,
              child: const Text(
                "Click Me...",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
