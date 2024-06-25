import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Assignment1State();
  }
}

class _Assignment1State extends State {
  List<String> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Assignment 2"), backgroundColor: Colors.blue),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: TextField(
                  onSubmitted: (value) {
                    items.add(value);
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: Text("$items"),
          ),
        ],
      ),
    );
  }
}
