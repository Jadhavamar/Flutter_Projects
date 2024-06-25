import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List typesOfMatches = [
    "Test Match",
    "One-Day-match",
    "T-20 Match",
  ];

  List Player = [
    [
      "Images/1.jpg",
      "Images/2.jpg",
      "Images/3.jpg",
      "Images/4.jpg",
      "Images/5.jpg",
      "Images/6.jpg",
      "Images/7.jpg",
      "Images/8.jpg",
      "Images/9.jpg",
    ],
    [
      "Images/1.jpg",
      "Images/2.jpg",
      "Images/3.jpg",
      "Images/4.jpg",
      "Images/5.jpg",
      "Images/6.jpg",
      "Images/7.jpg",
      "Images/8.jpg",
      "Images/9.jpg",
    ],
    [
      "Images/1.jpg",
      "Images/2.jpg",
      "Images/3.jpg",
      "Images/4.jpg",
      "Images/5.jpg",
      "Images/6.jpg",
      "Images/7.jpg",
      "Images/8.jpg",
      "Images/9.jpg",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: typesOfMatches.length,
          separatorBuilder: (BuildContext context, int matchesIndex) {
            return Text(
              "${typesOfMatches[matchesIndex]}",
              style: TextStyle(
                  fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            );
          },
          itemBuilder: (BuildContext context, sepindex) {
            return ListView.builder(
                physics: const ScrollPhysics(parent: null),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: Player[sepindex].length,
                itemBuilder: (BuildContext context, buildindex) {
                  return Container(
                    height: 150,
                    width: 100,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Image.asset(
                      Player[sepindex][buildindex],
                    ),
                  );
                });
          }),
    );
  }
}
