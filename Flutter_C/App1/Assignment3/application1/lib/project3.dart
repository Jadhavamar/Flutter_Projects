import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key, required this.title});
  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  }
  
  class _MyHomePageState extends State<MyHomePage>{
    int_counter = 0;

    void_incrementcounter(){
      setState(){
        _counter++;
      
  };
}

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(Widget.title),
    ),
    body: Center(
      child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'you have pushed the button this mant times:',
        ),
        Text(
          '$_counter',
          style:Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip:'Increment',
      child:const Icon(Icons.add),
    ),
  );
 }
}

           