import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 200, width: 150, color: Colors.yellow),
                const SizedBox(
                  width: 30,
                ),
                Container(height: 200, width: 150, color: Colors.red),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(height: 200, width: 330, color: Colors.green),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 200, width: 150, color: Colors.purple[300]),
                const SizedBox(
                  width: 30,
                ),
                Container(height: 200, width: 150, color: Colors.blue[300]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
