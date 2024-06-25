import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    @override
    Widget build(BuildContext context){
      return Scaffold(
        body:Padding(padding: const EdgeInsets.only(top: 50,left: 27,right: 27),
        child: Column(
          children:[
            Row(
              children:[
                  Column(
                      children: [
                          Text("HI Amar",
                            style: GoogleFonts.dmSans(fontSize:25,
                            fontWeight:FontWeight.w700 ,
                            color: const Color.fromRGBO(131, 76, 52, 1),)),
                          Text("Great to see you again!",
                          style: GoogleFonts.dmSans(fontSize:16,
                          fontWeight:FontWeight.w400,
                          color:const Color.fromRGBO(131, 72, 56, 1)
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )                  
                    ],
              
                  )
                ]
              ),
            ]
          )
        )  
      );
    }
  }
}