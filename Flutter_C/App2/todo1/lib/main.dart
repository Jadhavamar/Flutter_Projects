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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          width: 330,
          height: 112,
          color: const Color.fromRGBO(250, 232, 232, 1),
          child: Column(
            children: [
              Row(children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  height: 52,
                  width: 52,
                ),
                Center(
                  child: Image.network(
                    "https://imgs.search.brave.com/4HIvyxjynxTEmxiclrq5MKZ1bHMA6edc_wYwEtWIP3w/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/MDgwMDQ1MjYwNzIt/M2JlNDNhNTAwNWY2/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4TWpCOGZI/QnBZM1IxY21WOFpX/NThNSHg4TUh4OGZE/QT0",
                    height: 23.79,
                    width: 19.07,
                  ),
                ),
                Expanded (
                  child: const Column(
                    children: [
                      Text(
                        "Lorem Ipsum is simply setting industry. ",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.start,
                      ),
                      Text(
                        "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        style: TextStyle(fontSize: 10),
                        overflow: TextOverflow.visible,
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ]),
              const Row(
                children: [
                  Text("10 july 2023"),
                  const Spacer(),
                  Icon(Icons.edit),
                  Icon(Icons.delete)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
