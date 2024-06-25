import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Assignment1State();
  }
}

class _Assignment1State extends State {
  bool showFlag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Assignment 1"), backgroundColor: Colors.blue),
      body: Center(
        child: Container(
          width: 300,
          child: TextField(
            obscureText: showFlag,
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                  onTap: () {
                    showFlag = !showFlag;
                    setState(() {});
                  },
                  child: showFlag
                      ? const Icon(
                          Icons.visibility,
                        )
                      : Icon(Icons.visibility_off)),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
