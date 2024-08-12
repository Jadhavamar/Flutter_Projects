import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Doctordetails extends StatefulWidget {
  const Doctordetails({super.key});

  @override
  State<Doctordetails> createState() => _DoctordetailsState();
}

class _DoctordetailsState extends State<Doctordetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
      body: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Color.fromRGBO(245, 146, 69, 1),
                size: 20,
              ),
            ),
            Text(
              "Veterinary",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(
              width: 2,
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        ),
        Container(
          width: 376,
          height: 568,
          child: Column(
            children: [
              Text(
                "Dr. Anna Jhonason",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Veterinary Behavioral",
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(194, 195, 204, 1)),
              ),
              Row(
                
              )
            ],
            
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}
