import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 2"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 500,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    20,
                  ),
                  right: Radius.circular(20)),
              border:
                  Border(bottom: BorderSide(color: Colors.black, width: 20))),
          child: Column(
            children: [
              Image.network(
                width: 400,
                height: 300,
                "https://i.pinimg.com/564x/76/b0/45/76b04578e97bc455c049991e02d360db.jpg",
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  height: 70,
                  decoration: const BoxDecoration(
                    color: Colors.purple,
                  ),
                  child: const Text(
                    "Add to Cart",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
