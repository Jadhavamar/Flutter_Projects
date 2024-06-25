import 'package:flutter/material.dart';

class project1 extends StatelessWidget {
  const project1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment2"),
      ),
      body: row(
        height: double.infinity,
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children:[
            Container(
              height: 100,
              width:100,
              color:Colors.orange,
            ),
            Container(
              height: 100,
              width:100,
              color:Colors.orange,
            ),
            Container(
              height: 100,
              width:100,
              color:Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
      