import 'package:flutter/material.dart';

class todo extends StatefulWidget{

  final String title;
  final String Discription;
  final bool done;

  static var length;

  const todo({
    super.key,
     required this.title,
     required this.Discription,
     required this.done,
     });
    
     @override
     State<todo> createState() => _todoState();
}
class _todoState extends State<todo>{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color:widget.done ? Colors.green.shade100: Colors.red.shade100,
          borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
            Text(
              widget.title,  
              style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20),
              ),
            Text(widget.Discription),
          ],
          ),
        ),
      ),
    );
  }
}