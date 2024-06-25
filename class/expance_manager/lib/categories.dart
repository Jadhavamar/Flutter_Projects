import 'package:flutter/material.dart';

class category extends StatefulWidget{
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
  }

  class _categoryState extends State<category> {
    Future<dynamic> showMyDiaglog() async {
      return await showDialog(
        context: context,
         builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Delete Confirmation"),
            content: const Text(
              "Are you sure you want to delete the selected category?",
            ),
            actions: [
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: const Text("delete"),
                ),
              ],
            );
          },
        );
      }

      @override
      Widget build(BuildContext context){

      }
  }
 