import 'package:flutter/material.dart';
import 'package:music_app/Controller/SongController.dart';
import 'package:music_app/view/homeDisplay.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
          return SongController();
        },
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Homedisplay(),
        ));
  }
}
