//Create 2 containers in the centre of the screen and give that color to the
//containers.

import 'package:flutter/material.dart';

class Program4 extends StatelessWidget {
  const Program4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 100,
              color: Colors.yellow,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}