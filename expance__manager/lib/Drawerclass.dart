import 'package:expance__manager/Trash.dart';
import 'package:expance__manager/category.dart';
import 'package:expance__manager/pie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: Container(
          margin:const EdgeInsets.only(left: 30, bottom:5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,  
            children: [  
                const  SizedBox(height: 50,),
                Text("Expense Manager", style: GoogleFonts.poppins(fontSize:16 , fontWeight: FontWeight.w600),),
                Text("Saves all your Transactions", style: GoogleFonts.poppins(fontSize:10 ),),
                 
                const  SizedBox(height: 50,),
                 Row(
                  children: [ 
                  Image.asset("asset/trans.png") ,
                 const SizedBox(width: 10,),
                  Text("Transaction", style: GoogleFonts.poppins(fontSize:16),)

                 ],),

                const SizedBox(height: 30,),
                 GestureDetector(
                   onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push( context  , MaterialPageRoute(builder: (context){
                      return const MyPieChart();
                     }));
                    
                   },
                   child: Row(
                    children: [ 
                    Image.asset("asset/graphs.png") ,
                                   const SizedBox(width: 10,),
                    Text("Graphs", style: GoogleFonts.poppins(fontSize:16),)
                   
                   ],),
                 ),

                const  SizedBox(height: 30,),
                 GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                    Navigator.push( context  , MaterialPageRoute(builder: (context){
                      return const Cate();
                    }));
                    
                  },
                   child: Row(
                    children: [ 
                    Image.asset("asset/cate.png") ,
                   const  SizedBox(width: 10,),
                    Text("Category", style: GoogleFonts.poppins(fontSize:16),)
                   
                   ],),
                 ),

                const  SizedBox(height: 30,),
                 GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.pushReplacement(context , MaterialPageRoute(builder: (context){
                      return const Trash();
                    }));

                    
                  },
                   child: Row(
                    children: [ 
                    Image.asset("asset/trash.png") ,
                   const  SizedBox(width: 10,),
                    Text("Trash ", style: GoogleFonts.poppins(fontSize:16),)
                   
                   ],),
                 ),

                const SizedBox(height: 30,),
                 Row(
                  children: [ 
                  Image.asset("asset/about.png") ,
                const  SizedBox(width: 10,),
                  Text("About us", style: GoogleFonts.poppins(fontSize:16),)

                 ],)
          
            ],
          ),
        )

      );

  }

  }
