import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Listui extends StatefulWidget {
  const Listui({super.key});

  @override
  State<Listui> createState() => _ListuiState();
}

class Modelview {
  final String tittle;
  final String description;
  final String date;

  Modelview(
      {required this.tittle, required this.description, required this.date});
}

class _ListuiState extends State<Listui> {
  TextEditingController tittleTextController = TextEditingController();
  TextEditingController discriptionTextController = TextEditingController();
  TextEditingController dateTextController = TextEditingController();

  bool isinput = false;
  int currindex = 0;

  List<Color> color = [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(237, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];

  List<Modelview> data = [];

  // Function Of Delete Task

  void deletetask(int index) {
    setState(() {
      data.removeAt(index);
    });
  }

  // Fuction of Add Task

  void addtask() {
    if (isinput == false) {
      Modelview newTask = Modelview(
        tittle: tittleTextController.text,
        description: discriptionTextController.text,
        date: dateTextController.text,
      );

      setState(() {
        data.add(newTask);
      });
    } else {
      Modelview newTask = Modelview(
        tittle: tittleTextController.text,
        description: discriptionTextController.text,
        date: dateTextController.text,
      );

      setState(() {
        data[currindex] = newTask;
      });
    }

    tittleTextController.clear();
    discriptionTextController.clear();
    dateTextController.clear();

    Navigator.pop(context);
  }

  Widget _buildBottomsheet(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Create Task",
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // decoration: const BoxDecoration(boxShadow: [
              //   BoxShadow(
              //     offset: Offset(0, 0),
              //     blurRadius: 10,
              //     spreadRadius: 1,
              //     color: Color.fromRGBO(0, 0, 0, 0.1),
              //   ),
              // ]),
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                controller: tittleTextController,
                decoration: const InputDecoration(
                    labelText: "Title",
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide:
                          BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                    )),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              // decoration: const BoxDecoration(boxShadow: [
              //   BoxShadow(
              //     offset: Offset(0, 0),
              //     blurRadius: 10,
              //     spreadRadius: 1,
              //     color: Color.fromRGBO(0, 0, 0, 0.1),
              //   ),
              // ]),
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                controller: discriptionTextController,
                decoration: const InputDecoration(
                  labelText: "Description",
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(0, 139, 148, 1),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              // decoration: const BoxDecoration(boxShadow: [
              //   BoxShadow(
              //    offset: Offset(0, 0),
              //     blurRadius: 2,
              //      spreadRadius: 1,
              //     color: Color.fromRGBO(0, 0, 0, 0.1),
              //   ),
              // ]),
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: TextField(
                controller: dateTextController,
                readOnly: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(0, 139, 148, 1)),
                  ),
                  labelText: "Date",
                  hintText: "26-02-2024",
                  suffixIcon: GestureDetector(
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2025));

                        String formatedDate =
                            DateFormat.yMMMd().format(pickedDate!);
                        setState(() {
                          dateTextController.text = formatedDate;
                        });
                      },
                      child: const Icon(Icons.calendar_month)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 300,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: ElevatedButton(
                  onPressed: addtask,
                  child: Text(
                    "Submit",
                  ),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color.fromRGBO(0, 139, 148, 1),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          title: Text(
            "To-do List",
          ),
          // centerTitle: true,
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color[index % color.length],
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 20,
                    spreadRadius: 1,
                  )
                ],
              ),
              margin: const EdgeInsets.only(
                  top: 30, left: 15, right: 15, bottom: 15),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    data[index].tittle,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        // decoration: const BoxDecoration(
                        //     color: Colors.white, shape: BoxShape.circle),
                        child: Image.network(
                          "https://cdn4.iconfinder.com/data/icons/language-learning-filled-color/300/101534332Untitled-3-1024.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Expanded(
                          child: Text(
                        data[index].description,
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        data[index].date,
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          isinput = true;
                          currindex = index;
                          showModalBottomSheet(
                              context: context,
                              builder: ((context) {
                                tittleTextController.text = data[index].tittle;
                                discriptionTextController.text =
                                    data[index].description;
                                dateTextController.text = data[index].date;

                                return _buildBottomsheet(context);
                              }));
                        },
                        child: const Icon(
                          Icons.edit_outlined,
                          color: Color.fromRGBO(0, 139, 148, 1),
                          size: 17,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            data.removeAt(index);
                          });
                        },
                        child: const Icon(
                          Icons.delete_outlined,
                          color: Color.fromRGBO(0, 139, 148, 1),
                          size: 17,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isinput = false;
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return _buildBottomsheet(context);
              });
        },
        child: const Text("Add"),
      ),
    );
  }
}
