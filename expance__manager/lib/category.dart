import 'package:expance__manager/Drawerclass.dart';
import 'package:expance__manager/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';
import 'package:google_fonts/google_fonts.dart';


class Cate extends StatefulWidget {
  const Cate({super.key});

  @override
  State<Cate> createState() => _CategoryState();
}

class _CategoryState extends State<Cate> {

  Future<void> showDia(){
    return showDialog(context: context, 
    builder: (context){
      return AlertDialog(
       title: Container(
        margin:const EdgeInsets.only(left: 50),
        child: Text("Delete Category",style: GoogleFonts.poppins(fontSize:16 , fontWeight: FontWeight.w500))),
       content: Text("Are you sure you want to delete the selected category?" , style: GoogleFonts.poppins(fontSize:12 , fontWeight: FontWeight.w400),),
       contentPadding:const EdgeInsets.only(left: 35, top: 10,bottom: 10 ,right: 20),
       actionsAlignment: MainAxisAlignment.spaceEvenly,
       actions:[

        ElevatedButton(
          onPressed: (){

          },
         
          style:const ButtonStyle( 

            backgroundColor: MaterialStatePropertyAll(Color(0xff0EA17D)) 

          ),
           child: Text("Delete", style: GoogleFonts.poppins(fontSize:16 , color:Colors.white),),
        ),

         ElevatedButton(
          onPressed: (){

          },
          style:const ButtonStyle(  
          backgroundColor: MaterialStatePropertyAll(Color.fromARGB(137, 249, 249, 247)) 



          ),
          child: Text("Cancle", style: GoogleFonts.poppins(fontSize:16 , color: Colors.black),),
        ),



       ]

      );
    }
    );
  }


  void showSheet(){
   showModalBottomSheet(
     context: this.context,
     isScrollControlled: true,
     builder: (context){
      return Padding(
        padding:MediaQuery.of(context).viewInsets ,
        child: Container(
          decoration:const  BoxDecoration(
             color: Colors.white,  
             borderRadius: BorderRadius.only(topLeft : Radius.circular(25), topRight : Radius.circular(25)),


          ),
         
          child:  Column(  
            mainAxisSize: MainAxisSize.min,
            children: [  
              SizedBox(height: 10,),

              Container(  
                height: 74,
                width: 74,
                decoration: BoxDecoration( 
                  color: Colors.grey.shade300, 
                  borderRadius: BorderRadius.circular(37)
                ),
                child: Icon(Icons.image),

              ),

              Text("Add "),

              SizedBox(height: 20,),
               Container(
              width: 350,
              margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                      decoration:  BoxDecoration( 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                        
                        ]
                      ),
                    
                      child:Text("Image Url"),
                    ),


               Container(
              margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
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

                    SizedBox(height: 10,),
               Container(
              width: 350,
              margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                      decoration:  BoxDecoration( 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                        
                        ]
                      ),
                    
                      child:Text("Category"),
                    ),


                      Container(
              margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
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
                      width: 123,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff0EA17D),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: TextButton(onPressed:(){

                      }, 
                      child:Text("Add",style: GoogleFonts.poppins(fontSize:18 ,color: Colors.white),)
                       ),
                    ),
                    SizedBox(height: 40,)


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
      floatingActionButton: Container(
        width: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50)
        ),
        
        
        child: FloatingActionButton(
          backgroundColor: Color(0xffffffff),
          
          onPressed: (){

            showSheet();
        
          },
          child: Container(
            
            child: Row(  children: [
                    SizedBox(width: 10,),
                    Container(  
                    margin: EdgeInsets.all(5),
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(  
            color: Color(0xff0EA17D),
            borderRadius: BorderRadius.circular(16)
                    ),
                    child: Icon(Icons.add, color: Colors.white,),
                    
              ),
              SizedBox(width: 5,),
              Text("Add Category", style: GoogleFonts.poppins()),
                    
            ],),
          ),
          ),
      ),
  floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      
      drawer: MyDrawer(),
      appBar: AppBar(
       title: Text("Categories", style: GoogleFonts.poppins(fontSize:16 , fontWeight:FontWeight.w500),),
      ),
      body: GridView.builder( 

        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          
          ),
        itemCount: 4,
        padding: EdgeInsets.all(10),
        
        itemBuilder : (context , index){
          return GestureDetector(
            onTap: (){

            },
            onLongPress: (){
              showDia();
            },
            child: Container(
              height: 150,
              width: 145,
              decoration: BoxDecoration(  
                color:Colors.white ,  
                borderRadius : BorderRadius.circular(14),
                boxShadow :const  [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8 ,
                    offset: Offset(1,2),
                  ),
                 
                ]
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(  
                        color: collor((index%4)),
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: Image.asset(categories[index])),
            
                      Text(categoriesName[index], style: GoogleFonts.poppins(fontSize:16 ,fontWeight: FontWeight.w500),),
                  ],
                )),
            ),
          );
        }




      
      ),
    );
  }
}