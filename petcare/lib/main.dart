import 'package:petcare/view/Detail_Doctor_view.dart';
import 'package:petcare/view/Grooming_view.dart';
import 'package:petcare/view/Login_View.dart';
import 'package:petcare/view/Training_view.dart';
import 'package:petcare/view/Veterinary_view.dart';
import 'package:petcare/view/home_view.dart';
import 'package:petcare/view/notification_view.dart';
import 'package:petcare/view/shop_view.dart';

import 'view/Splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Doctordetails(),
    );
  }
}
