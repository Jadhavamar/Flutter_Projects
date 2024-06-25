import 'package:flutter/material.dart';

void main (){
  runApp(const MainApp());
}
class MainApp extends  StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body:
          Container(
           height: 300,
           width: 300,
           decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: const  BorderRadius.all(Radius.circular(20)),
            border:Border.all(color: Colors.blue,width: 10),
            gradient: const LinearGradient(
              stops: [0.3,0.5],
              colors: [Colors.red,Colors.green]
            )
             
            
           )
          )
        ),
      );
  }
}
