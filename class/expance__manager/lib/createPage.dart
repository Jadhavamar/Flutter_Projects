import 'package:expance__manager/HomePage.dart';
import 'package:expance__manager/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body:
    
         Column(  
          children :[  

            const SizedBox(height: 60,),

            SizedBox(
              width: double.infinity,
               child: Image.asset("img/firstPage.png",height: 100 ,width: 100,)
              ),

            const SizedBox(height: 60,),
             SizedBox(
              width: 300,
              child: Text("Create your Account ",style: GoogleFonts.poppins(fontSize:16 , color:Colors.black ,fontWeight: FontWeight.bold),)),
              const SizedBox(height: 30,),



              Container(  
                padding:const  EdgeInsets.only(left: 50,right: 50,),
                child: Column(  
                 // mainAxisAlignment: MainAxisAlignment.start,
                  children: [ 

                    Container(
                      decoration:  BoxDecoration( 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow( 
                            color: Colors.grey ,
                            offset: Offset(0,2),
                            blurRadius: 5,


                          )
                        ]
                      ),
                    
                      child: const  TextField( 
                        decoration: InputDecoration(  
                          border: InputBorder.none,
                          hintText: "name",
                        
                          fillColor: Color(0xffFFFFFF),
                          filled: true ,
                        ),
                      ),
                    ),
                     const  SizedBox(height: 15,),

                    
                    Container(
                      decoration:  BoxDecoration( 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:const [
                          BoxShadow( 
                            color: Colors.grey ,
                            offset: Offset(0,2),
                            blurRadius: 5,


                          )
                        ]
                      ),
                    
                      child:const  TextField( 
                        decoration: InputDecoration(  
                          hintText: "name",
                          border: InputBorder.none,
                          fillColor: Color(0xffFFFFFF),
                          filled: true ,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15,),

                    
                    Container(
                      decoration:  BoxDecoration( 
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow( 
                            color: Colors.grey ,
                            offset: Offset(0,2),
                            blurRadius: 5,
                          )
                        ]
                      ),
                    
                      child: const TextField( 
                        decoration: InputDecoration(  
                          hintText: "name",
                          border: InputBorder.none,
                          fillColor: Color(0xffFFFFFF),
                          filled: true ,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15,),
                    
                    Container(
                      decoration:const  BoxDecoration( 
                        boxShadow: [
                          BoxShadow( 
                            color: Colors.grey ,
                            offset: Offset(0,2),
                            blurRadius: 5,


                          )
                        ]
                      ),
                    
                      child: const TextField( 
                        decoration: InputDecoration(  
                          hintText: "name",
                          border: InputBorder.none,
                          fillColor: Color(0xffFFFFFF),
                          filled: true ,
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),

                    Container(
                     width: double.infinity,
                      decoration: BoxDecoration(
                        color:Color(0xff0EA17D),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      

                      child: TextButton(onPressed: (){
                         Navigator.push( context , MaterialPageRoute(builder: (context){
                            return const  HomePage();
                          }));
                      
                      },
                       
                       child: Text("Sign Up ", style: GoogleFonts.poppins(fontSize:15 ,color:Color(0xffffffff) ))
                       ),
                    ),

                    const SizedBox(height: 150,),

                     Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("Already have an account?", style: GoogleFonts.poppins(fontSize:12)),
                      GestureDetector(
                        onTap:(){
                           Navigator.pushReplacement( context , MaterialPageRoute(builder: (context){
                            return const  LoginPage();
                          }));

                        },
                        child: Text(" Sign in", style: GoogleFonts.poppins(fontSize:12,color:Color(0xff0EA17D)))),

                    ],)



                  ],
                ),
              )
          ]
        ),
      
    );
  }
}