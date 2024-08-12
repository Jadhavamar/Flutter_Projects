import 'package:flutter/material.dart';
import 'package:practiceapplication/login.dart';
import 'database.dart';
import 'bikeInfo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await creatingBikeDatabase();
  rentBike = await getBikeData();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}
