
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';



dynamic database ;
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

class personalNotes {

  String? title; 
  String? Discription ;
  String? date;

  personalNotes({this.title,this.Discription , this.date});

}

class _MyHomePageState extends State<MyHomePage> {

  
  TextEditingController _Title = TextEditingController();
  TextEditingController _discription = TextEditingController();
  TextEditingController _date = TextEditingController();


 List ToDOList = [];

 

  
  
 



void remove(int index){

  ToDOList.removeAt(index);
}



void ControllerValue(personalNotes obj){

  _Title.text= obj.title! ;
  _date.text = obj.date!;
  _discription.text = obj.Discription! ;

  showBottomSheet(true , obj);
}

void AddOrEdit(bool isEdit  , [personalNotes? obj]){

  if(!isEdit){

    ToDOList.add(personalNotes(
       title: _Title.text ,
       Discription : _discription.text ,
       date: _date.text

    ));

  }else{

    obj!.title= _Title.text ;
    obj.Discription = _discription.text ;
    obj.date = _date.text ;


  }

  _Title.clear();
  _discription.clear();
  _date.clear();
  Navigator.pop(context);



}



    // following function is written for the open bottom sheet
  void showBottomSheet(bool isEdit, [personalNotes? obj] ) {

    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              //height: 600,

              color: Colors.grey.shade100,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      margin:
                          const EdgeInsets.only(left: 50, right: 50, top: 10),
                      child: TextField(
                         maxLength: 45,
                        controller: _Title,
                        autofocus: true,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          hintText: "Add title",
                       //   errorText: isError ? errorMsg(_Title.text) : null,
                          focusColor: Colors.black,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: const BorderSide(color: Colors.red)),

                              
                        ),
                        onTap: (){
                        //  isError = false ;

                        },
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin:
                          const EdgeInsets.only(left: 50, right: 50, top: 10),
                      child: TextField(
                        controller: _discription,
                        
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Add Discription",
                            //  errorText: isError?errorMsg(_discription.text):null,
                            focusColor: Colors.black,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: Colors.black))),
                        onTap: () {
                          if (_Title.text.isEmpty) {
                            setState(() {
                             // isError = true;
                            });
                          }
                        },
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin:
                          const EdgeInsets.only(left: 50, right: 50, top: 10,bottom: 10),
                      child: TextField(
                          readOnly: true,
                          controller: _date,
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Add Date ",
                            focusColor: Colors.black,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            suffix: const Icon(Icons.calendar_month),
                          ),
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2024),
                              lastDate: DateTime(2025),
                            );

                            String formatDate =
                                DateFormat.yMMMd().format(pickedDate!);
                            setState(() {
                              _date.text = formatDate;
                            });
                          }),
                    ),
                    Container(
                      width: 300,
                      height: 50,
                      margin:
                          const EdgeInsets.only(left: 50, right: 50, top: 15),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {

                           if(!isEdit){

                            AddOrEdit(false);


                           }
                           else{

                            AddOrEdit(true , obj);
                           }
                    

                                 
                           });
                        },
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xff6F51FF),),
                          shadowColor: MaterialStatePropertyAll(Colors.black),
                        ),
                        child: const Text(
                          "Submit",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                      ),
                    ),
                  ]),
            ),
          );
        });
  }

 
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor:Color(0xff6F51FF),

      floatingActionButton: FloatingActionButton(onPressed: (){

        showBottomSheet(false);
        setState(() {
          
        });



        
        
      },
      child: 
        Icon(Icons.add),
      backgroundColor: Color(0xff6F51FF),
      foregroundColor: Colors.white,
      shape:CircleBorder(),
      ),
      body:

      Column(  
        children: [  

          Expanded(  
            flex: 1,
            child: Container(  
            width: double.infinity,
            height: double.infinity,
            color:Color(0xff6F51FF),

            child: Column(  
              children: [  
               Container( 
              
                margin: EdgeInsets.only(top: 40 , left: 15),
                child:Column(  
                
                  children: [ 
                    SizedBox(width: double.infinity, child: Text("good morning", style: GoogleFonts.quicksand(fontSize:30 , color:Colors.white))),
                    SizedBox(width: double.infinity,    child: Text("Amar",style: GoogleFonts.quicksand(fontSize:30 , color:Colors.white))),

                    
                  ],
                ), 
              )
              ],
            ),
            
            ) ,
            
          ),

          Expanded(
            flex: 3,
            child: Container(  
               decoration: BoxDecoration(  
                color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(35),
                    ),
              


              child: Column(  
                children: [  
                  Container(
                   
                    padding: EdgeInsets.all(15),
                    child: Text("CREATE TO DO LIST ",style:GoogleFonts.quicksand(fontSize:18, fontWeight:FontWeight.bold))),
                  Expanded(  
                    child: Container(

                      decoration: const BoxDecoration(  
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight:Radius.circular(25)),
                    ),
                    child: ListView.builder(  

                      itemCount: ToDOList.length,
                      itemBuilder: (context , index){
                        return Slidable(
                          
                           closeOnScroll: true,
                          endActionPane: ActionPane(
                            extentRatio: 0.2 ,
                            motion: const BehindMotion(), 
                          children: [
                            Expanded(child:  Container(
                              
                              decoration: BoxDecoration(  
                                color: Colors.grey.shade100
                              ),
                              child: Column(  
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [ 
                                  GestureDetector(  
                                    onTap: (){

                                      ControllerValue(ToDOList[index]);
                                      setState(() {
                                        
                                      });
                                      
                              
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(2),
                                        height: 30,
                                      width: 30,
                                      decoration: BoxDecoration( 
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xff6F51FF),
                                      ),
                                      child: Icon(Icons.edit,color: Colors.white,)),
                                  ),
                                  SizedBox(height: 10,),
                              
                                  GestureDetector(  
                                    onTap: (){

                                      remove(index);
                                      setState(() {
                                        
                                      });
                              
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration( 
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xff6F51FF),
                                      ),
                                      child: Icon(Icons.delete_outline , color: Colors.white,)),
                                  )
                                ],
                              ),
                            ) 
                            )
                          ]
                          ),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 15,left: 10,right: 10),

                            height: 130,
                            width: double.infinity,

                            decoration:const  BoxDecoration(  
                              color: Colors.white,
                              boxShadow: [

                                BoxShadow(  
                                  offset: Offset(5, 5),
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                  color: Colors.grey ,
                                )
                              ],
                            ),
                          
                            child: Container(
                              child: Row(  
                                
                              
                                children: [  
                                
                                 Container(  
                                  
                                      height: 70,
                                      width: 70,
                                      decoration: BoxDecoration(  
                                        borderRadius: BorderRadius.circular(35),
                                        color: Colors.grey.shade400
                                        
                                      ),
                                      child: Icon(Icons.person),
                                    ),
                                  const  SizedBox(width: 20,),
                                  
                               
                                    Column(  
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [  
                                        SizedBox(width:200,child : Text(ToDOList[index].title)),
                                        SizedBox(width:200 , child: Text(ToDOList[index].Discription))
                                      ],
                                      
                                    ),
                                  
                                  const Expanded(
                                    flex: 2,
                                    child: Icon(Icons.check_circle_outline , color: Colors.green,),
                                  ),
                              
                                ],
                              ),
                            ),
                          ),
                        );
                      },

                    )
                    ),
                  )
                ],
              ),
            ),

        )

        ],
      )

     
      
    );
  }
}
