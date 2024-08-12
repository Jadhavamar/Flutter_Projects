import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Model/Modal_view.dart';

class Groomings extends StatefulWidget {
  const Groomings({super.key});

  @override
  State<Groomings> createState() => _GroomingsState();
}

class _GroomingsState extends State<Groomings> {
  final List _Groomingimage = [
    Data(image: "Assets/Groomingimage/image1.png", Text: "Bathing & Drying"),
    Data(image: "Assets/Groomingimage/image2.png", Text: "Hair Triming"),
    Data(image: "Assets/Groomingimage/image3.png", Text: "Nail Trimming"),
    Data(image: "Assets/Groomingimage/image4.png", Text: "Ear Cleaning"),
    Data(image: "Assets/Groomingimage/image5.png", Text: "brushing"),
    Data(image: "Assets/Groomingimage/image6.png", Text: "Bathing & Drying"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 146, 69, 1),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Text(
                "Grooming",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: 327,
            height: 99,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(245, 146, 69, 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "60% OFF",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "On hair & spa treatment",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      "Assets/Veterinary/veter.png",
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            child: TextField(
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                hintText: "search",
                hintStyle: TextStyle(
                    color: Color.fromRGBO(
                  194,
                  195,
                  204,
                  1,
                )),
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
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Our Services",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "See all",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 400,
            child: GridView.builder(
                physics: ScrollPhysics(parent: null),
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 170,
                    child: Column(
                      //mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 103,
                          width: 122,
                          child: Image.asset((_Groomingimage[index].image),
                              fit: BoxFit.cover),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(_Groomingimage[index].Text)
                      ],
                    ),
                  );
                }),
          )
        ]),
      ),
    );
  }
}
