import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Shops extends StatefulWidget {
  const Shops({super.key});

  @override
  State<Shops> createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: 200,
      ),
      Container(
        height: 148,
        width: 375,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(245, 146, 69, 1),
        ),
      ),
      Positioned(
          top: 51.5,
          left: 32,
          child: Container(
              width: MediaQuery.of(context).size.width - 50,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Amar",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Find your lovable Pets",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.shop_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ]),
                  ]))),
      Positioned(
        bottom: 20,
        left: 20,
        right: 20,
        child: Container(
          height: 50,
          child: TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: "Search Something Here...",
              hintStyle: TextStyle(
                  color: Color.fromRGBO(
                194,
                195,
                204,
                1,
              )),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.black, width: 1),
              ),
            ),
          ),
        ),
      ),
    ]));
  }
}
