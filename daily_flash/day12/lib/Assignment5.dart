import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Assignment1State();
  }
}

class _Assignment1State extends State {
  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Assignment 5"), backgroundColor: Colors.blue),
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: _date,
                    readOnly: true,
                    onTap: () async {
                      DateTime? date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2025),
                      );

                      String formattedDate = DateFormat.yMMMd().format(date!);

                      setState(() {
                        _date.text = formattedDate;
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: "Select Date",
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
