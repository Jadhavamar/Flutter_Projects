import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.black),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 100,
                height: 100,
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                    vertical: BorderSide(width: 2),
                  ),
                ),
                width: 100,
                height: 100,
              ),
              Container(
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
