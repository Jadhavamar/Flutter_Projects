
// ignore_for_file: file_names

import 'package:expance__manager/Drawerclass.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List categories = [
      "asset/food.png",
      "asset/fuel.png",
      "asset/medicine.png",
      "asset/shopping.png",
      "asset/enter.png"
    ];
List categoriesName = [
  "Food",
  "Fuel",
  "Medicine",
  "Shopping",
  "Entertainment"
];

 List colorsList = [
  Colors.red ,
  Colors.pink ,
  Colors.orange ,
  Colors.cyan ,
  Color(0xff643EFF)
];

Color collor(int index){
  if(index==0){
    return colorsList[0];
  }else if(index==1){
    return colorsList[1];
  }else if(index==2){
    return colorsList[2];
  }else if(index==3) {
    return colorsList[3];
  }else{
    return colorsList[4];
  }
}

  

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void  showSheet(){
    showModalBottomSheet(
     context: context,
     isScrollControlled: true,
     builder: (context){
      return Padding(
        padding:MediaQuery.of(context).viewInsets ,
        child: Container(
           decoration:const  BoxDecoration(
             color: Colors.white,  
             borderRadius: BorderRadius.only(topLeft : Radius.circular(25), topRight : Radius.circular(25))

          ),
          child:  Column(  
            mainAxisSize: MainAxisSize.min,
            children: [  
              const  SizedBox(height: 50,),

               Container(
              margin:const  EdgeInsets.only(left: 20,right: 20,bottom: 20),
                      decoration:  BoxDecoration( 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                        
                        ]
                      ),
                    
                      child:const  TextField( 
                        decoration: InputDecoration(  
                          fillColor: Color(0xffFFFFFF),
                          filled: true ,
                          border: OutlineInputBorder()
                        ),

                      ),
                    ),

                    Container(
                    margin:const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                      decoration:  BoxDecoration( 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                         
                        ]
                      ),
                    
                      child:const  TextField( 
                        decoration: InputDecoration(  
                          fillColor: Color(0xffFFFFFF),
                          filled: true ,
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                      decoration:  BoxDecoration( 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                         
                        ]
                      ),
                    
                      child:const  TextField( 
                        decoration: InputDecoration(  
                          fillColor: Color(0xffFFFFFF),
                          filled: true ,
                          border: OutlineInputBorder()
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 20,right: 20,bottom: 20),
                      decoration:  BoxDecoration( 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                         
                        ]
                      ),
                    
                      child:const  TextField( 
                        decoration: InputDecoration(  
                          border: OutlineInputBorder(),
                        
                          fillColor: Color(0xffFFFFFF),
                          filled: true ,
                        ),
                      ),
                    ),
                    const  SizedBox(height: 40,),

                    Container(
                      width: 123,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff0EA17D),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextButton(onPressed:(){

                      }, 
                      child:Text("Add",style: GoogleFonts.poppins(fontSize:18 ,color: Colors.white),)
                       ),
                    ),
                    const SizedBox(height: 40,)


            ],
          ),
          
        ),
      );
     }
     );
  }

  

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const MyDrawer(),
      appBar: AppBar(  
        title:const Text("June 2022 "),
        centerTitle: true,
        actions:const  [
          Icon(Icons.search),
          SizedBox(width: 30,)
        ],
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
                      children: [
                        
                        Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: collor((index%5)),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Image.asset(categories[index]),
                         
                        ),
                        
                         Column(  
                          children: [  
                            Row(
                              children: [ 
                              const SizedBox(width: 10,),
                              SizedBox(
                                width: 140,
                              child: Text(categoriesName[index],style: GoogleFonts.poppins(fontSize:18,fontWeight: FontWeight.bold),)),
                              const SizedBox(width: 100,),
                             
                              Container( 
                                height: 25,
                                width: 25, 
                                decoration: BoxDecoration(
                                  color: const Color(0xffF67131),
                                  borderRadius: BorderRadius.circular(14)
                                ),
                                child:const Center(child: Icon(Icons.remove , color: Colors.white,),)

                              ),
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

               showSheet();
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