import 'package:flutter/material.dart';
import 'package:todolistdemoapp/Widget.dart';
import 'package:todolistdemoapp/store.dart';

class Screen extends StatefulWidget {
  const Screen(String s, {super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<Todostore> todos = [];

  TextEditingController title = TextEditingController();
  TextEditingController Discription = TextEditingController();

  @override
  void initState() {
    super.initState();
    print("in init");
  }

  // var Todos;

  @override
  Widget build(BuildContext context) {
    print("izn build");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("To Do List"),
        backgroundColor: Colors.blue.shade100,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 500,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: todos.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        todos[index].check = !todos[index].check;
                        setState(() {});
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: todo(
                              title: todos[index].title,
                              Discription: todos[index].Discription,
                              done: todos[index].check,
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                todos.removeAt(index);
                                setState(() {});
                              },
                              icon: Icon(Icons.delete)),
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: title,
                        decoration: const InputDecoration(labelText: "Title"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: Discription,
                        decoration:
                            const InputDecoration(labelText: "Discription"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (title.text.isNotEmpty &&
                            Discription.text.isNotEmpty) {
                          todos.add(
                              Todostore(title.text, Discription.text, false));
                          setState(() {});
                        }
                      },
                      child: const Text("Add")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
