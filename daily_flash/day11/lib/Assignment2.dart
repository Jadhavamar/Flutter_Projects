import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget {
  Assignment2({super.key});

  @override
  State<StatefulWidget> createState() {
    return Assignment2State();
  }
}

class Assignment2State extends State {
  bool searchBoxFlg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Assignment 2"), backgroundColor: Colors.blue),
      body: Center(
        child: Container(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  searchBoxFlg
                      ? const Icon(Icons.search)
                      : const SizedBox(
                          width: 0,
                        ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(Icons.lock),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                ),
              ),
            ),
            onTap: () {
              searchBoxFlg = true;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
