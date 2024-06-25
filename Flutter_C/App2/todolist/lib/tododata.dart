

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ToDo_Model.dart';
import 'package:intl/intl.dart';


class TodoList1 extends StatefulWidget {
  const TodoList1({super.key});
  @override
  State createState() => _TodoList1State();
}


class _TodoList1State extends State<TodoList1> {

  // Text Editing controller

  TextEditingController dateController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController discriptionController = TextEditingController();

  void showBottomSheet (
    bool doedit, [ToDoModelclass? toDoModelObj]) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),

      isDismissible: true,
      context: context,
      builder: (context){
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,

            // TO AVOID THE KEYBOARD OVERLAP THE SCRREN

            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize:MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "create Task",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Title",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: titleController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.purpleAccent),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Discription",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: discriptionController,
                    maxLines: 4,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),

                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Date",
                    style: GoogleFonts.quicksand(
                      color: const Color.fromRGBO(0, 139, 148, 1),
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  TextField(
                    controller: dateController,
                    readOnly: true,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.date_range_rounded),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),

                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onTap: () async {
                      DateTime? pickeddate = await showDatePicker(
                        context: context,
                         initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                           lastDate: DateTime(2025),
                          );

                          String formatedDate = 
                          DateFormat.yMMMd().format(pickeddate!);
                          setState(() {
                            dateController.text = formatedDate;
                          });   
                        },       
                      ), 
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                         backgroundColor: const Color.fromRGBO(0, 139, 148, 1),

                      ),
                      onPressed: () {

                        doedit ? submit(doedit,toDoModelObj) : submit(doedit);
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Submit",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
            ],
          ),
        );
      });
  }
  

  var cardColor = [
   const Color.fromRGBO(250, 232, 232, 1),
   const Color.fromRGBO(232, 237, 250, 1),
   const Color.fromRGBO(250, 249, 232, 1),
   const Color.fromRGBO(250, 232, 250, 1),
  ];

  List<ToDoModelclass> todoList = [
    ToDoModelclass(
      title: "Notes", 
      Discription: "Take Notes", 
      Date: "10 july 2024"
      ),

      ToDoModelclass(
        title: "Meeting", 
        Discription: "Meeting with Sir", 
        Date: "10 juli 2024",
        ),
  ];

  void submit(bool doedit, [ToDoModelclass? toDoModelObj]){
   if (titleController.text.trim().isNotEmpty &&
   discriptionController.text.trim().isNotEmpty &&
   dateController.text.trim().isNotEmpty){
    if (!doedit){
      setState(() {
        todoList.add(
          ToDoModelclass(
            title: titleController.text.trim(),
             Discription: discriptionController.text.trim(), 
             Date: dateController.text.trim(),
            ),
          );
        });
      }else{
      setState(() {
        toDoModelObj!.Date = dateController.text.trim();
        toDoModelObj.title = titleController.text.trim();
        toDoModelObj.Discription =discriptionController.text.trim();
      });
    } 
  } clearController();
}

/// To do clear all the text editing controller
void clearController (){
  titleController.clear();
  discriptionController.clear();
  dateController.clear();
}

// remove notes

void removeTasks(ToDoModelclass toDoModelObj){
  setState(() {
    todoList.remove(toDoModelObj);
  });
}

void editTask(ToDoModelclass toDoModelObj){

  // ASSIGN THE TEXT EDITING CONTROLLERS WITH THE TEXT VALUES AND THEN
  // OPEN THE BOTTOM SHEET

  titleController.text = toDoModelObj.title;
  discriptionController.text = toDoModelObj.Discription;
  dateController.text = toDoModelObj.Date;

  showBottomSheet(true, toDoModelObj);
  }

  @override
  void dispose(){
    super.dispose();
    titleController.dispose();
    discriptionController.dispose();
    dateController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar:AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        centerTitle: true,
        title: Text(
          "TO DO APP",
          style: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
      ),
      body:ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 16,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: cardColor[index % cardColor.length],
                boxShadow: const [
                  BoxShadow(
                  offset: Offset(0, 10),
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  blurRadius: 10,
                )
                ],
                borderRadius: BorderRadius.circular(10),  
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children:[

                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("data:image/jpeg;base64,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",
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                todoList[index].title,
                                style: GoogleFonts.quicksand(
                                  fontWeight:FontWeight.w600,
                                  fontSize: 15,
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                todoList[index].Discription,
                                style: GoogleFonts.quicksand(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(84, 84, 84, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        children: [
                          Text(
                            todoList[index].Date,
                            style: GoogleFonts.quicksand(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromRGBO(132, 132, 132, 1),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap:() {
                                  editTask(todoList[index]);
                                  
                                },
                                child: const Icon(
                                  Icons.edit_outlined,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onDoubleTap: (){
                                  removeTasks(todoList[index]);
                                },
                                child: const Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        onPressed: () {
          clearController();
          showBottomSheet(false);
        },
        child: const Icon(
          size: 50,
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
} 
         
                     