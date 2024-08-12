import 'package:bicycle_app/view/Home.dart';
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(36, 44, 59, 1),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [0.5, 0.5],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(36, 44, 59, 1),
                  Color.fromRGBO(75, 76, 237, 1),
                ],
              ),
            ),
          ),

          // EXTREME TEXT
          Positioned(
            top: 108,
            right: -30,
            child: RotatedBox(
              quarterTurns: 1,
              child: Text(
                'EXTREME',
                style: GoogleFonts.allertaStencil(
                  fontSize: 120,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 0.5),
                  letterSpacing: 4,
                ),
              ),
            ),
          ),
          //background bike image
          Positioned(
            top: 230,
            left: 20,
            child: Transform(
              transform: Matrix4.identity()..scale(-1.0, -1.0),
              child: SizedBox(
                height: 400,
                width: 400,
                child: Image.asset(
                  "assets/cycle1.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 150,
            child: Image.asset(
              'assets/logo.png',
              height: 50,
              width: 70,
            ),
          ),
          // get started button

          Positioned(
              child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            },
            child: Container(
              height: 70,
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  color: Color.fromRGBO(36, 44, 59, 1),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(-3, 4),
                      blurRadius: 4,
                    ),
                  ]),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(75, 76, 237, 1),
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 4,
                            color: const Color.fromRGBO(239, 186, 51, 1))),
                    child: const Icon(
                      Icons.navigate_next,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Get Start",
                    style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
