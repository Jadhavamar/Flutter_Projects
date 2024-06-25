import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(205, 218, 218, 1),
      //appBar: AppBar(
     //  backgroundColor: Color.fromRGBO(r, g, b, opacity)
     // ),
      body: Expanded(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10),
              width: double.infinity,
              child: Text("Welcome to",style: TextStyle(fontSize: 28),),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              width: double.infinity,
              child: Text("Welcome", style: TextStyle(fontSize: 37,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  suffixIcon:IconButton(
                    onPressed: (){

                    },
          
                  )  
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(45),
              ), 
              child: 
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: Text("Course For you",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,fontStyle: FontStyle.Jost),
                         ),
                         
                      ),
                      Expanded()
                      Container(
                        margin: EdgeInsets.all(10),
                        height: 242,
                        width: 190,
                        decoration:
                         BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          gradient: LinearGradient(
                            colors: colors.
                            colors.)
                          ),
                      )
                      
                    )
                  ],
                )
              ), 
            ),  
          ],
        ),
      ),
    );
  }
}
