import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              "Login",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 32,
                      color: Color.fromRGBO(245, 146, 69, 1),
                      fontWeight: FontWeight.w700)),
            ),
            Image.asset("Assets/login.png"),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: Text("Email",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w600))),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(245, 146, 69, 1))),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(245, 146, 69, 1), width: 2),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text("Password",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w600))),
            ),
            Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(245, 146, 69, 1))),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: Color.fromRGBO(245, 146, 69, 1), width: 2),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Forgot Password ? Click Here",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w500)),
            ),
            const SizedBox(
              height: 10,
            ),
            /*TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                fillColor: const Color.fromRGBO(245, 146, 69, 1),
                filled: true,
                hintText: "LOGIN",
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Color.fromRGBO(245, 146, 69, 1), width: 2),
                ),
              ),
            ),*/
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(
                        Size(MediaQuery.of(context).size.width, 40)),
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(245, 146, 69, 1))),
                child: Text(
                  "LOGIN",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white),
                )),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(
                        Size(MediaQuery.of(context).size.width, 40)),
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(245, 146, 69, 1))),
                child: Text(
                  "LOGIN WITH EMAIL",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white),
                )),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    fixedSize: MaterialStatePropertyAll(
                        Size(MediaQuery.of(context).size.width, 40)),
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(245, 146, 69, 1))),
                child: Text(
                  "LOGIN WITH FACEBOOK",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white),
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.6,
              child: Text(
                "By continue you agree to our Terms & Privacy Policy",
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
