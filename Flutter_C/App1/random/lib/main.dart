import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List Guest = [
    "prajval kale",
    "abhishek jadhav",
    "amar jadhav ",
    "parth jawale",
    "prajval kale",
    "abhishek jadhav",
    "amar jadhav ",
    "parth jawale",
    "prajval kale",
    "abhishek jadhav",
    "amar jadhav ",
    "parth jawale",
    "prajval kale",
    "abhishek jadhav",
    "amar jadhav ",
    "parth jawale"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App",
      home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            title: Text("Core2Web"),
            backgroundColor: Color.fromARGB(255, 239, 204, 171),
            actions: const [
              Icon(Icons.favorite),
              Icon(Icons.account_circle),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          body: Column(
            children: [
              Container(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                                "https://imgs.search.brave.com/j2RzHUVCipWn09Nbg_9oQO2Wt9-pRrr8t6LjYUxrHyQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy9k/L2RmL0F5b2RoeWFf/UmFtX01hbmRpcl9J/bmF1Z3VyYXRpb25f/RGF5X1BpY3R1cmUu/anBn"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                                "https://imgs.search.brave.com/eWTSP1AORiC3n4gMilpMUh8Q6ovfNFVjmCTo-fiGoUM/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/aGluZHVzdGFudGlt/ZXMuY29tL2h0LWlt/Zy9pbWcvMjAyNC8w/MS8yMi85MDB4MTYw/MC9yYW1fdGVtcGxl/XzE3MDU5MTUxMTY0/ODdfMTcwNTkxNTEx/Njg5Mi5wbmc"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network(
                                "https://imgs.search.brave.com/V_blgHF7yn4oUulQeejhIKy69tLHMR0COzIbsd4TNgg/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jZG4u/dGhld2lyZS5pbi93/cC1jb250ZW50L3Vw/bG9hZHMvMjAyNC8w/MS8yMjE4NTAyNS9T/Y3JlZW5zaG90LTIw/MjQtMDEtMjItYXQt/MTIuNDEuMjctUE0u/cG5n"),
                          )
                        ],
                      ))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 175, 250),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: double.infinity,
                    child: Text("Information",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 35))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 400,
                  width: double.infinity,
                  child: ListView(children: const [
                    Text(
                      "RAM MANDIR : The Ram Mandir (lit. 'Rama Temple') is a Hindu temple in Ayodhya, Uttar Pradesh, India.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                        "he site is the former location of the Babri Masjid mosque, which was built in the 16th century CE.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25)),
                    Text(
                        "Many Hindus believe that it is located at the site of Ram Janmabhoomi, the mythical birthplace of Rama, a principal deity of Hinduism",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25)),
                    Text(
                        "The final judgement in the Ayodhya dispute was declared by the Supreme Court of India on 9 November 2019.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25)),
                  ])),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 229, 185, 248),
                        borderRadius: BorderRadius.circular(15)),
                    width: double.infinity,
                    child: Text(
                      "Guest",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 35),
                    )),
              ),
              Container(
                height: 160,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: Guest.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(Icons.account_circle, size: 25),
                        title: Text("${Guest[index]}",
                            style: TextStyle(fontSize: 25)),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.call),
                        ),
                      );
                      // return    Container(
                      //   child: Text("${python[index]}",textAlign:TextAlign.center,style: TextStyle(fontSize:25),),
                      // );
                    }),
              )
            ],
          )),
    );
  }
}
