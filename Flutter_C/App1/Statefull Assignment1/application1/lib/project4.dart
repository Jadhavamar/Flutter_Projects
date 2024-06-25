
import 'package:flutter/material.dart';

class project4 extends StatefulWidget {
  const project4({super.key});

  @override
  State<project4> createState() => _project4State();
}

class _project4State extends State<project4> {
  bool box1Color = false;
  bool box2Color = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Text("color Box"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Box1
            Column(
              children:[
                Container(
                  height: 100,
                  width: 100,
                  color: box1Color ? Colors.red : Colors.black,
                ),
                const SizedBox(
                  height: 20,
                ),
                // Box 1 button
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      box1Color = true;
                    });
                  },
                  child: const Text("Color Box1"),
                ),
              ],
            ),

            const SizedBox(
              width:20,
            ),

            //Box2

            Column(
              children:[
                Container(
                  height:100,
                  width: 100,
                  color:box2Color ? Colors.blue : Colors.black,
                ),
                const SizedBox(
                  height:20,
                ),
                // Box 2 Button

                ElevatedButton(
                  onPressed: (){
                    setState(()  {
                      box2Color = true;
                    });
                  },
                  child: const Text("Color Box2"),
                ),
                  const SizedBox(
                    width:20,
                  ),
                ],
              ),
            
              const SizedBox(
                width: 20,
            ),
          ],
        ),
       
      ),
    );
  } 
}