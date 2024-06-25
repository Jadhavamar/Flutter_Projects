import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment3 extends StatefulWidget {
  const Assignment3({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Assignment1State();
  }
}

class _Assignment1State extends State {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Assignment 3"), backgroundColor: Colors.blue),
      body: Center(
        child: Container(
          width: 300,
          child: Form(
            key: _globalKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value == "") {
                      return "Enter your name";
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: "Enter Your Name",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value == "") {
                      return "Enter Your College name";
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: "Enter Your College Name",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      _globalKey.currentState!.validate();
                    },
                    child: const Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
