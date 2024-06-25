import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  Assignment1({super.key});

  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: colorList[index],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
