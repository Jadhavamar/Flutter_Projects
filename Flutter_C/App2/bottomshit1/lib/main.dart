import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottomsheet"),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          showBottomSheet(context: context,
           builder: (BuildContext context){
            return const Column(
              children: [

              ],
            );
          });
        }
      ),
      ),
    );
  }
}