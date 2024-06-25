import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("title 1"),
                        SizedBox(
                          height: 20,
                        ),
                        Text("This is the description..."),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.purple,
                      ),
                      child: Icon(Icons.add),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
