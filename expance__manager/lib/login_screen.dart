import 'package:expance__manager/home.dart';
import 'package:expance__manager/signUp_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 42, top: 86, right: 38, bottom: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100, bottom: 60),
                child: Image.asset("img/icon.png"),
              ),
              Text(
                "Login to your Account",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Container(
                  height: 50,
                  // width: 280,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          offset: Offset(0, 3),
                          blurRadius: 10,
                        )
                      ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none),
                        hintText: "   Username",
                        hintStyle: GoogleFonts.poppins()),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: Container(
                  height: 50,
                  // width: 280,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          offset: Offset(0, 3),
                          blurRadius: 10,
                        )
                      ]),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none),
                        hintText: "password",
                        hintStyle: GoogleFonts.poppins()),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  }));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(14, 161, 125, 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              //  const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 250),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SignUp();
                    }));
                  },
                  child: Text(
                    "Don’t have an account? Sign up",
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
