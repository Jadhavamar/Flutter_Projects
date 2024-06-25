import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color:const Color.fromRGBO(2, 147, 172, 1),
              shape: BoxShape.circle,
              border: Border.all( width: 2,color: const Color.fromRGBO(0, 0, 0, 1)),

                boxShadow:const[
                   BoxShadow(
                    color: Colors.red,
                    offset: Offset(10, 10),
                    blurRadius: 20,
                )
              ] 
            ),
            child: Image.network(
            
              "https://imgs.search.brave.com/bUpK1vVuZr_ljLOrFHQ0P_OuFiENRcKiZtvNdenIhtk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi90b2Rv/LWxpc3QtMjc1MjA3/NjUuanBn",
            ),
          ), 
        ),
      ),
    );
  }
}

