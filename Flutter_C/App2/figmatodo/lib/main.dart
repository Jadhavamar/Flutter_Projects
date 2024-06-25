import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isToDO = false;

  Scaffold isToDoScaffold() {
    return Scaffold(
        backgroundColor: const Color(0xff6F51FF),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Container(
                      width: 300,
                      child: Text(
                        "Good Morning",
                        style: GoogleFonts.quicksand(
                            fontSize: 25, color: Colors.white),
                      )),
                  Container(
                      width: 300,
                      child: Text(" Amar",
                          style: GoogleFonts.quicksand(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "CREATE TO DO LIST ",
                      style: GoogleFonts.quicksand(
                          fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 567,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                    child: ListView.builder(
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(15),
                            padding: EdgeInsets.all(15),
                            color: Colors.white,
                            height: 90,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Container(
                                  height: 52,
                                  width: 52,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.grey,
                                  ),
                                  child: const Icon(Icons.person),
                                ),
                                const Column(
                                  children: [
                                    Text("Lecture"),
                                    Text("Attend Lecture")
                                  ],
                                ),
                                Container(
                                  child: Row(
                                    Icons
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Scaffold emptyScaffold() {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isToDO = true;
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      body: const Center(
        child: Text("No Task Available"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return isToDO ? isToDoScaffold() : emptyScaffold();
  }
}
