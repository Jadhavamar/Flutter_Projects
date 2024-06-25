import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Assignment5State();
  }
}

class _Assignment5State extends State {
  bool flg = false;

  TextEditingController _name = TextEditingController();
  TextEditingController _phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              child: TextField(
                controller: _name,
                decoration: const InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.purple,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              child: TextField(
                controller: _phone,
                decoration: const InputDecoration(
                  hintText: "Enter phone no",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.purple,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                flg = !flg;
                setState(() {});
              },
              child: Container(
                width: 200,
                height: 50,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.purple,
                ),
                child: const Text(
                  "Submi",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            flg
                ? Container(
                    height: 100,
                    child: Column(
                      children: [
                        Text("Name:${_name.text}"),
                        Text("Phone no:${_phone.text}"),
                      ],
                    ),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
