
import "package:expance__manager/loginPage.dart";
import "package:flutter/material.dart";
import "package:flutter/material.dart ";
import "package:google_fonts/google_fonts.dart";

class FirstPage extends StatefulWidget {
 
 @override
  State<FirstPage> createState(){
    return _FirstPageState();
  }
}

class _FirstPageState extends State<FirstPage>{

@override
  Widget build(BuildContext context){
    return MaterialApp(
 
    // theme:ThemeData( 
    //   textTheme: TextTheme(
    //     displayLarge: GoogleFonts.poppins(  
    //       fontSize:20,
    //       color:Colors.red
    //     )

    //   )

    // ),
    home:Scaffold( 
      backgroundColor: Colors.white,
      
      body: Center(  

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 200,),
            Container(  
              height: 144,
              width: 144,
              decoration: BoxDecoration(  
                color: const Color(0xffEAEEEB),
                borderRadius : BorderRadius.circular(72)
              ),
              child: Image.asset("asset/firstPage.png"),
            
            ),
            const SizedBox(height: 300,),

            GestureDetector(
              onTap: (){
                 Navigator.pushReplacement( context , MaterialPageRoute(builder: (context){
                            return const  LoginPage();
                          }));
              },
              child: Text("Expense Manager", style:GoogleFonts.poppins(fontSize:16 , color:Colors.black ,fontWeight: FontWeight.bold)))
          ],
        ),
      )
    )
    );
  }
}