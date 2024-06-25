import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment4 extends StatefulWidget {
  const Assignment4({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Assignment1State();
  }
}

class SingleModalClass {
  final String name;
  final String collegeName;

  SingleModalClass({required this.name, required this.collegeName});
}

class _Assignment1State extends State {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  List<SingleModalClass> list = [];

  TextEditingController _name = TextEditingController();
  TextEditingController _college = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Assignment 4"), backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: Form(
                key: _globalKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      controller: _name,
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
                      controller: _college,
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
                          bool currState = _globalKey.currentState!.validate();

                          if (currState) {
                            list.add(SingleModalClass(
                                name: _name.text.trim(),
                                collegeName: _college.text.trim()));
                            setState(() {});
                          } else {
                            print("YES");
                          }
                        },
                        child: const Text("Submit")),
                    const SizedBox(
                      height: 50,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Name: ${list[index].name}"),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    "College Name : ${list[index].collegeName}"),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
