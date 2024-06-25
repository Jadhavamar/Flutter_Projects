
import"dart:developer";
import 'package:flutter/material.dart';
import"package:provider/provider.dart";

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


@override
Widget build(BuildContext context){
  log("IN MY APP BUILD");

  return MultiProvider(
    providers:[
      Provider(
        create:(context){
          return Player(PlayerName:"Amar", jrno:18);
        },
      ),
      ChangeNotifierProvider(create:(context){
        return Match(matchNo:200, runs:8800);
      }),
    ],

    child: MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Provider demo"),
        ),
        body: Consumer<Match>(
          builder:(context,value,child){
            log("IN CONSUMER");
            return Center(
              child: Text(Provider.of<Player>(context).PlayerName),
            );
          },  
        )),
      ),
    );
  }
}

class Player{
  String PlayerName;
  int jrno;

  Player({required this.PlayerName,required this.jrno});
}

class Match with ChangeNotifier{
  int matchNo;
  int runs;

  Match({required this.matchNo, required this.runs});

  void ChangeData(int matchNo, int runs){
    this.matchNo =  matchNo;
    this.runs = runs;
    notifyListeners();
  }
}