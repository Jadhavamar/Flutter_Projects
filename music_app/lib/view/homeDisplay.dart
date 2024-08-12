import 'package:flutter/material.dart';
import 'package:music_app/view/Displaygallery.dart';

class Homedisplay extends StatefulWidget {
  const Homedisplay({super.key});

  @override
  State<Homedisplay> createState() => _HomedisplayState();
}

class _HomedisplayState extends State<Homedisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
          ),
          Image.asset("assets/homepage.png"),
          const Positioned(
            top: 300,
            child: Padding(
              padding: EdgeInsets.all(60.0),
              child: SizedBox(
                height: 300,
                width: 300,
                child: Text(
                  "Dancing between The shadows Of rhythm",
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Positioned(
              top: 570,
              left: 47,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const Displaygallery();
                  }));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 47,
                  width: 260,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color.fromRGBO(255, 46, 0, 1)),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )),
          Positioned(
            top: 630,
            left: 47,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const Displaygallery();
                }));
              },
              child: Container(
                alignment: Alignment.center,
                height: 47,
                width: 260,
                decoration: BoxDecoration(
                    border: Border.all(color: Color.fromRGBO(255, 46, 0, 1)),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(19)),
                child: const Text(
                  "Continue with Email",
                  style: TextStyle(
                      color: Color.fromRGBO(255, 46, 0, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Positioned(
            height: 716,
            left: 50,
            child: Container(
              alignment: Alignment.center,
              height: 47,
              width: 260,
              child: const Text(
                "by continuing you agree to terms of services and Privacy policy",
                style: TextStyle(
                    color: Color.fromRGBO(203, 200, 200, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
