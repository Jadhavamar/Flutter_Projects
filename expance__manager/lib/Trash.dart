import 'package:expance__manager/Drawerclass.dart';
import 'package:expance__manager/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Trash extends StatefulWidget {
  const Trash({super.key});

  @override
  State<Trash> createState() => _TrashState();
}

class _TrashState extends State<Trash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      drawer: MyDrawer(),
      appBar: AppBar(  
        title: Text("Trash",style: GoogleFonts.poppins( fontSize:16  , fontWeight : FontWeight.w500)),
      ),
      body: Column(  
        children: [  
         SizedBox(  
            height: 600,
            child: ListView.builder(
              itemCount:categories.length ,
              itemBuilder:(context , index){
                return  Container(
                   padding: const EdgeInsets.all(10),
                    width: 361,
                    decoration:const BoxDecoration( 
                      border: BorderDirectional(bottom:BorderSide()) 
                    ),
                  
                    child: Row(  
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container( 
                                height: 25,
                                width: 25, 
                                decoration: BoxDecoration(
                                  color: const Color(0xffCCD2E3),
                                  borderRadius: BorderRadius.circular(14)
                                ),
                                child:const Center(child: Icon(Icons.remove , color: Colors.white,),)

                              ),
                        
                         Column(  
                          children: [  
                            Row(
                              children: [ 
                              const SizedBox(width: 10,),
                              SizedBox(
                                width: 140,
                              child: Text(categoriesName[index],style: GoogleFonts.poppins(fontSize:18,fontWeight: FontWeight.bold),)),
                              const SizedBox(width: 130,),
                             
                             
                              const SizedBox(width: 5,),
                              const Text("450",style: TextStyle(fontSize: 18),)
                            ],
                            ),
                            const SizedBox(height: 5,),
                            const  SizedBox(
                              width: 290,
                              child: Text("Lorem Ipsum is simply dummy text of the ")),

                            const SizedBox(
                              width: 300,
                              child:  Row(
                                mainAxisAlignment:MainAxisAlignment.end,
                                children: [ 
                                Text("3 june"),
                                 Text("|"),
                                  Text("11:50 AM"),
                              ],),
                            )


                          ],
                        )
                  
                      ],
                    ),
                  );
              
              },
            ),
          ),
  
          Container(
            width: 166,
            decoration: BoxDecoration( 
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),

              boxShadow :const [
                BoxShadow(  
                  color: Colors.grey,
                  offset: Offset(5,5)
                )
              ] 

            ),
            child: TextButton(
              
              onPressed: (){

            
            }, 
            
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [  
                Container( 
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color:const Color(0xff0EA17D),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: const Icon(Icons.add , color: Colors.white,),
                ),
                
                const Text("Add Transaction")
              ],
            )
            ),
          )
        ],
      ),
    );
  }
}