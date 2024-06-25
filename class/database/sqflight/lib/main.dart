import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';



dynamic database;

class Player {
  final String name;
  final int jerNO;
  final int runs;
  final double avg;

  Player ({
    required this.name,
    required this.jerNO,
    required this.runs,
    required this.avg,
  });

  Map<String, dynamic> PlayerMap(){
    return {
      'name': name,
      'jerNo': jerNO,
      'runs': runs,
      'avg': avg,
    };
  }

  @override
  String toString() {
    return '{name:$name, jerNo:$jerNO,runs:$runs,avg:$avg}';
  }
}

Future insertPlayerData(Player obj) async{
  final localDB = await database;

  await localDB.insert(
    "Player",
    obj.PlayerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future <List<Player>> getPLayerData() async {
  final localDB = await database;

  List<Map<String, dynamic>> ListPlayers = await
  localDB.query("Player");

  return List.generate(ListPlayers.length, (i) {
    return Player(name: ListPlayers[i]['name'],
     jerNO: ListPlayers[i]['jerNO'], 
     runs: ListPlayers[i]['runs'], 
     avg: ListPlayers[i]['avg'],
    );
  });
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  database =  openDatabase(
    join(await getDatabasesPath() , "PlayerDB.db"),
    version:1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE player(
        name TEXT,
        jerNo INTEGER PRIMARY KEY,
        runs INT,
        avg REAL)''');
      
    },
  );

  // insert into

  Player batsman1 = Player(
    name: "Virat kohli",
    jerNO: 18,
    runs: 50000,
    avg: 50.33,
  );

  insertPlayerData(batsman1);
  Player batsman2 = Player(
    name: "Rohit sharma",
    jerNO: 45,
    runs: 40000,
    avg: 10.33,
  );

  insertPlayerData(batsman2);
  Player batsman3 = Player(
    name: "Shubhman Gill",
    jerNO: 77,
    runs: 80000,
    avg: 30.33,
  );
   await insertPlayerData(batsman3);
   print(await getPLayerData());
}

