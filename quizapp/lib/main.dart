import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestions = [
    {
      "question": "What is the largest continent in world?",
      "Options": ["North America", "south America", "Asia", "Africa"],
      "answerIndex": 2,
    },
    {
      "question": "what is the national sport of india?",
      "Options": ["hockey", "Cricket", "Boxing", "Running"],
      "answerIndex": 0,
    },
    {
      "question": "What is the capital city of india?",
      "Options": ["Pune", "Delhi", "Mumbai", "Jaipur"],
      "answerIndex": 1,
    },
    {
      "question": "Who invented aeroplanes?",
      "Options": [
        "Rahul ghandhi",
        "Narendra modi",
        "Elon musk",
        "Wright brothers"
      ],
      "answerIndex": 3,
    },
    {
      "question": "Who is the prime minister of india?",
      "Options": [
        "Sundar pichai",
        "Narendra modi",
        "Sachin tendulkar",
        "Elon Musk"
      ],
      "answerIndex": 1,
    },
  ];

  bool QuestionScreen = true;
  int questionIndex = 0;
  int selectedAnswerIndex = -1;
  int noOfCorrectAnswers = 0;

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == allQuestions[questionIndex]["answerIndex"]) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void validateCurrentPage() {
    if (selectedAnswerIndex == -1) {
      return;
    }

    if (selectedAnswerIndex == allQuestions[questionIndex]["answerIndex"]) {
      noOfCorrectAnswers += 1;
    }

    if (selectedAnswerIndex != -1) {
      if (questionIndex == allQuestions.length - 1) {
        setState(() {
          QuestionScreen = false;
        });
      }
      selectedAnswerIndex = -1;
      setState(() {
        questionIndex += 1;
      });
    }
  }

  Scaffold isQuestionScreen() {
    if (QuestionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Questions : ",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "${questionIndex + 1}/${allQuestions.length}",
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ]),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 380,
              height: 50,
              child: Text(
                allQuestions[questionIndex]["question"],
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(0),
              ),
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 0;
                  });
                }
              },
              child: Text(
                "A.${allQuestions[questionIndex]["Options"][0]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(1),
              ),
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 1;
                  });
                }
              },
              child: Text(
                "B.${allQuestions[questionIndex]["Options"][1]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(2),
              ),
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 2;
                  });
                }
              },
              child: Text(
                "C.${allQuestions[questionIndex]["Options"][2]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(3),
              ),
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 3;
                  });
                }
              },
              child: Text(
                "D.${allQuestions[questionIndex]["Options"][3]}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validateCurrentPage();
          },
          backgroundColor: Colors.blue.shade200,
          child: const Icon(
            Icons.forward,
            color: Colors.orange,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade300,
          centerTitle: true,
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPYuLxyBa75smb4ML4-6eOxtZosgZNlWlLpA&usqp=CAU",
                  ),
                  const Text(
                    "Congratulation !!!",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "You have completed the Quiz",
                    
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text("$noOfCorrectAnswers/${allQuestions.length}"),
                  ElevatedButton(
                      onPressed: () {
                        questionIndex = 0;
                        QuestionScreen = true;
                        noOfCorrectAnswers = 0;
                        selectedAnswerIndex = -1;
        
                        setState(() {});
                      },
                      child: const Text(
                        "Reset",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.orange,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}
