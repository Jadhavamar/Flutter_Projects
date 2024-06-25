import 'package:expance__manager/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext cobtext) {
                return const LoginPage();
              }));
            },
            child: Container(
                height: 144,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(234, 238, 235, 1)),
                child: Image.asset("img/icon.png")),
          ),
          Text(
            "Expense Manager",
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
