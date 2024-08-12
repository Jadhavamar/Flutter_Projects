import 'package:flutter/material.dart';

class Splashview extends StatefulWidget{
  const Splashview({super.key});

  @override

  State<Splashview> createState()=> _SplashviewState();
}

class _SplashviewState extends State<Splashview>{
  @override

  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 146, 69, 1),
      body: Center(
        child: Image.asset("Assets/Splash.png"),
      ),

    );
  }
  
}