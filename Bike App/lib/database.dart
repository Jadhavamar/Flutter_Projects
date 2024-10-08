import 'package:practiceapplication/bikeInfo.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:practiceapplication/bikeInfo.dart';

List symbol = [
  "!",
  "`",
  "#",
  "%",
  "^",
  "&",
  "*",
  "(",
  ")",
  "_",
  "-",
  "+",
  "+",
  ",",
  "?",
  "/",
  ":",
  ";",
  "]",
  "[",
  "}",
  "{",
  "|"
];
List userList = [];
int userindex = -1;

TextEditingController userNameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController emailController = TextEditingController();

bool displayPass = true;
bool findUser(String value) {
  for (int i = 0; i < userList.length; i++) {
    if (userList[i].userName == value) {
      userindex = i;
      return true;
    }
  }
  return false;
}

bool validUserName(String value) {
  for (int i = 0; i < symbol.length; i++) {
    if (value.contains(symbol[i])) {
      return false;
    }
  }
  return true;
}

//

//

class UserModelClass {
  int? id;
  String userName;
  String pass;
  String email;
  UserModelClass(
      {this.id,
      required this.userName,
      required this.pass,
      required this.email});
  Map<String, dynamic> userModelClassMap() {
    return {"id": id, "userName": userName, "pass": pass, "email": email};
  }
}

dynamic database;
dynamic database2;
Future<void> creatingDatabase() async {
  database = await openDatabase(
    join(await getDatabasesPath(), "usersDB1.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
        '''CREATE TABLE userTable(
      dynamic database2,
   id INT primary key,
         userName TEXT,
         pass TEXT,
         email TEXT
      )''',
      );
    },
  );
}

Future<void> creatingBikeDatabase() async {
  database2 = await openDatabase(
    join(await getDatabasesPath(), "usersDB12.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
        '''CREATE TABLE allBike(
      name TEXT     ,
      mainImage TEXT  PRIMARY KEY ,
      subImage1 TEXT ,     
      specification TEXT 

      )''',
      );
      await db.execute('''  CREATE TABLE Book(

      nameOfBike TEXT  primary key  ,
      mainImage TEXT ,
      subImage1 TEXT ,
  
      specification TEXT 

     )''');
    },
  );
}

Future<void> insert(UserModelClass obj) async {
  dynamic localDb = await database;
  await localDb.insert("userTable", obj.userModelClassMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

Future<void> insertBike(Ride obj) async {
  print("in insert");
  dynamic localDb = await database2;
  await localDb.insert("allBike", obj.riderMap(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

// Future<void> addToBook(obj) async {
//   dynamic localDb = await database2;
//   await localDb.insert(
//     "kart",
//     obj.laptopDataMap(),
//     conflictAlgorithm: ConflictAlgorithm.replace,
//   );
// }

Future<List<UserModelClass>> getData() async {
  dynamic localDb = await database;
  List<Map<String, dynamic>> data = await localDb.query("userTable");
  return List.generate(data.length, (i) {
    return UserModelClass(
        id: data[i]["id"],
        userName: data[i]["userName"],
        pass: data[i]["pass"],
        email: data[i]["email"]);
  });
}

Future<List<Ride>> getBikeData() async {
  dynamic localDb = await database2;
  List<Map<String, dynamic>> RetList = await localDb.query("allBike");
  return List.generate(RetList.length, (i) {
    return Ride(
        mainImage: RetList[i]["mainImage"],
        subImage1: RetList[i]["subImage1"],
        name: RetList[i]["name"],
        specification: RetList[i]["specification"]);
  });
}

// Future<List<LaptopData>> getKartData() async {
//   dynamic localDb = await database2;
//   List<Map<String, dynamic>> data = await localDb.query("kart");
//   return List.generate(data.length, (i) {
//     return LaptopData(
//         mainImage: data[i]["mainImage"],
//         subImage1: data[i]["subImage1"],
//         subImage2: data[i]["subImage2"],
//         subImage3: data[i]["subImage3"],
//         nameOflaptop: data[i]["nameOflaptop"],
//         specification: data[i]["specification"]);
//   });
// }
