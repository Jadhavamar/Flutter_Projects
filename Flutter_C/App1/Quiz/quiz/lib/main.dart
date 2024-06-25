import 'package:flutter/material.dart';
import 'info.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QUIZ APP"),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //question number
                    Text(
                      "Question ${no[count]} /${que.length}",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    // mark

                    Text(
                      "Score : $mark /10 ",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Solved : $solve ",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                // ignore: sized_box_for_whitespace
                // question
                Container(
                  width: 350,
                  margin: EdgeInsets.all(14),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 230, 227, 227),
                  ),
                  child: Text(
                    "Question : ${que[count]} .",
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //options ===>
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 3),
                  child: Column(children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: optcol("opt1"),
                      ),
                      onPressed: () {
                        isright("opt1");
                        setState(() {});
                      },
                      child: SizedBox(
                        width: 300,
                        child: Text(" ${opt1[count]}"),
                      ),
                    ),

                    //option 2 ==>
                    ElevatedButton(
                        onPressed: () {
                          isright("opt2");
                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                          primary: optcol('opt2'),
                        ),
                        child: SizedBox(
                          width: 300,
                          child: Text(" ${opt2[count]}"),
                        )),
                    //option 3 ==>
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: optcol("opt3"),
                      ),
                      onPressed: () {
                        isright("opt3");
                        setState(() {});
                      },
                      child: SizedBox(
                        width: 300,
                        child: Text(" ${opt3[count]}"),
                      ),
                    ),

                    //option 4 ==>
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: optcol("opt4"),
                      ),
                      onPressed: () {
                        isright("opt4");
                        setState(() {});
                      },
                      child: SizedBox(
                        width: 300,
                        child: Text(" ${opt4[count]}"),
                      ),
                    ),
                  ]),
                ),

                /// explanation

                (ansred[count] == true)
                    ? Container(
                        width: 350,
                        margin: EdgeInsets.all(14),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 230, 227, 227),
                        ),
                        child: Text(
                          "Explanation : ${explane[count]} .",
                          style: const TextStyle(fontSize: 18),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ],
        ),
      ),

      //floting button

      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (solve == que.length) {
                return;
              } else if (count == 9) {
                count = 0;
                return;
              }
              count++;
            });
          },
          child: const Icon(Icons.skip_next)),
    );
  }
}
