import 'package:expance__manager/Drawerclass.dart';
import 'package:expance__manager/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart%20';
import 'package:pie_chart/pie_chart.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPieChart extends StatefulWidget {
  const MyPieChart({super.key});

  @override
  State<MyPieChart> createState() => _MyPieChartState();
}

class _MyPieChartState extends State<MyPieChart> {


  Map<String,double> data = {

    "food":35 ,
    "Fuel":20 ,
    "Medicine":20,
    "Entertainment":20,
    "Shopping":10

  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: Text("Graphs", style: GoogleFonts.poppins(fontSize:16 , color:const Color(0xff212121))),
      ) ,
      drawer: const MyDrawer(),
      body: Column(  
        children: [ 

          Container(  
            height: 177,
            width: 312,
            margin: const EdgeInsets.only(left: 50),

            child: PieChart(
              dataMap: data,
              chartType : ChartType.ring ,
              chartRadius : 180 ,
             ringStrokeWidth: 25,
             animationDuration: Duration(seconds: 3),
            
             centerWidget: Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [  
                Text("Total :" , style: GoogleFonts.poppins(fontSize: 10),),
                Text("₹ 2550.00",style: GoogleFonts.poppins(fontSize:13 , fontWeight: FontWeight.w600))

              ],

               ),
             colorList:const  [
                 Color(0xffD60303),
                 Color(0xff0094FF),
                 Color(0xff00AE5B),
                 Color(0xff643EFF),
                 Color(0xffF126C4),

             ],

             legendOptions:const LegendOptions(  

             ),

             chartValuesOptions :const ChartValuesOptions( 
                  showChartValues : false 
             )

            ),
          ),
          Divider(),

          SizedBox(height: 10,),

          SizedBox(
            height: 320,
            width: 284,
            child: ListView.builder(
              itemCount: categories.length ,
              itemBuilder : (context , index){
                return Container( 
                  
                  padding:const EdgeInsets.all(10),
                  
                  child: Row(
                    children: [ 
                        Container(
                          
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: collor((index%5)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(categories[index]),
                         
                        ),
                        const  SizedBox(width: 10,),

                        Text(categoriesName[index] , style: GoogleFonts.poppins( fontSize:15  , fontWeight : FontWeight.w400),),

                       const  Spacer(),

                         Text("₹ 650.00",style: GoogleFonts.poppins( fontSize:15  , fontWeight : FontWeight.w600)),
                       const SizedBox(width: 10,),
                       const Text(">")
                       
                    ],
                  ),
                );
              }

            ),


          ),
          const Divider() ,

          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [  
              Text("Total" , style:GoogleFonts.poppins( fontSize:16  , fontWeight : FontWeight.w400) ,),
              Text("₹ 2,550.00" , style:GoogleFonts.poppins( fontSize:16  , fontWeight : FontWeight.w600) ,),
              
            ],),
          )

         
        ],
      ),

    );
  }
}
