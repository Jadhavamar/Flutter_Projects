import 'package:advancetodo/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';




class TODOAppUI extends StatefulWidget{
  const TODOAppUI({super.key});

  @override
  State<TODOAppUI> createState() => _TODOAppUIState();
}

class _TODOAppUIState extends State<TODOAppUI>{
  // TEXT EDITING CONTROLLER

  final TextEditingController datecontroller = 
  TextEditingController();
  final TextEditingController titlecontroller = 
  TextEditingController();
  final TextEditingController descriptioncontroller = 
  TextEditingController();

  final _formkey = GlobalKey<FormState>();

  Future<void> showBottomshit(bool doedit, [ToDoMclass?
  todomodelobj]) async{
    await showModalBottomSheet(
      isScrollControlled : true,
       shape : const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context){
        return Padding(
          padding: EdgeInsets.only(
            left: 15,
            right: 15,
            bottom:MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Create Task",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize:22,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                       color: const Color.fromRGBO(89, 57, 241, 1),
                      
                      fontWeight : FontWeight.w400,
                      fontSize : 15,
                      ),
                    ),

                    const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: titlecontroller,
                      decoration: InputDecoration(
                        hintText: "Enter Title",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(
                      height: 3,
                    ),
                    TextFormField(
                      controller: descriptioncontroller,
                      decoration: InputDecoration(
                        hintText: "Enter Description",
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                      const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(89, 57, 241, 1),
                        fontWeight: FontWeight.w400,
                        fontSize : 15,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: titlecontroller,
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: "Enter Date",
                        suffixIcon: const Icon(Icons.date_range_rounded),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(89, 57, 241, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(),
                          borderRadius: BorderRadius.circular(12),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context, 
                              initialDate: DateTime.now(), 
                              firstDate: DateTime(2023),
                              lastDate: DateTime(2025),
                              );

                              String formatedDate = 
                              DateFormat.yMMMd () .format(pickedDate!);

                              datecontroller.text = formatedDate;
                            },
                          ),   
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      margin: const EdgeInsets.all(10),
                      decoration:
                       BoxDecoration(borderRadius: BorderRadius.circular(30)),
                       child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
                        ), 
                        onPressed: (){
                          Navigator.of(context).pop();
                        }, 
                        child: Text("Submit",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize : 20),  
                      ),
                    ),  
                  ),
                ],
              ),
            );
          },
        );
  }
@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
    body: Padding(padding: const EdgeInsets.only(
      top: 100,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 35),
          child: Text(
            "Good Morning",
            style: GoogleFonts.quicksand(
              color:Colors.white,
              fontWeight: FontWeight.w400, 
              fontSize: 22,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 35),
          child: Text(
            "Amar",
            style: GoogleFonts.quicksand(
              color:Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 30,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(217, 217, 217, 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Text("CREATE TO DO LIST",
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w500,fontSize:15
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(child: Container(
              padding: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  ),
                ),
                child: ListView.builder(scrollDirection:Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index){
                  return Slidable(
                    closeOnScroll : true,
                    endActionPane: ActionPane(
                      extentRatio:0.4,
                      motion: const DrawerMotion(),
                      children:[
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(89, 57, 241, 1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(89, 57, 241, 1),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    key: ValueKey(index),
                    child:Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.only(
                        left: 20,
                        bottom: 20,
                        top: 20,
                      ),
                      decoration: const BoxDecoration(
                        color:  Color.fromRGBO(0, 0, 0, 0.5),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 20,
                            color: Color.fromRGBO(0, 0, 0, 0.13),
                          ),
                        ],
                        borderRadius:  BorderRadius.all(Radius.zero), 
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(217, 217, 217, 1),
                              ),
                              child: Image.network(""),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Amar",
                                    style: GoogleFonts.inter(
                                      fontWeight:FontWeight.w500,
                                      fontSize:15,
                                      color:Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Kya kr rhe ho",
                                    style: GoogleFonts.inter(fontWeight:FontWeight.w400,
                                    fontSize:12,
                                    color:const Color.fromRGBO(0, 0, 0, 7),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "10 july 2023",
                                    style: GoogleFonts.inter(
                                      color:const Color.fromRGBO(0, 0, 0, 1),
                                    fontWeight:FontWeight.w400,
                                    fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Checkbox(shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10),
                            ), 
                            activeColor: Colors.green,
                            value: true,
                            onChanged: (val){},
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            );
                          }, 
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(89, 57, 241, 1),
        onPressed: () async {
          await showBottomshit(false);
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
