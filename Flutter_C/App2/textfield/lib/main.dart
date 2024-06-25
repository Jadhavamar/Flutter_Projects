

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Company(),
    );
  }
}

class Company extends StatefulWidget {
  const Company({super.key});
  @override
  State createState() => _Company();
}

class _Company extends State {
  List<String> user = [];
  List<String> users = ["username", "company name", "location"];
  int index = 0;
  bool changecolor = true;
  bool changecolor1 = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController cnameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "INFO",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade100,
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 80,
            width: 400,
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  hintText: " Enter Name:",
                  focusColor: Colors.black,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 80,
            width: 400,
            child: TextField(
              controller: cnameController,
              decoration: const InputDecoration(
                  hintText: " Company Name:",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 70,
            width: 400,
            child: TextField(
              controller: locationController,
              decoration: const InputDecoration(
                  hintText: " Location",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                String uname = nameController.text.toString();
                String cname = cnameController.text.toString();
                String location = locationController.text.toString();
                if (uname.isEmpty == false &&
                    cname.isEmpty == false &&
                    location.isEmpty == false) {
                  user.add(uname);
                  user.add(cname);
                  user.add(location);
                  changecolor = false;
                  changecolor1 = false;
                }
              });
            },
            child: const Text("Submit"),
            style: const ButtonStyle(
                minimumSize: MaterialStatePropertyAll<Size>(
                  Size(200, 50),
                ),
                backgroundColor: MaterialStatePropertyAll(Colors.redAccent)),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            width: 800,
            color: changecolor ? Colors.transparent : Colors.greenAccent,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Info",
                      style: TextStyle(
                          color:
                              changecolor1 ? Colors.transparent : Colors.black,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
                Container(
                  height: 150,
                  width: 300,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int count) {
                      return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "${users[count]}: ${user[count]}",
                              style: const TextStyle(fontSize: 15),
                            ),
                            const SizedBox(
                              height: 10,
                            )
                          ]);
                    },
                    itemCount: user.length,
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
