import 'package:bycycle/model/BikeModelClass.dart';
import 'package:bycycle/view/card_page.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BikeDetail extends StatelessWidget {
  final BikeModelClass bobj;
  const BikeDetail({super.key, required this.bobj});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //backgroung
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height + 30,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  stops: [0.5, 0.5],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(36, 44, 59, 1), // Dark blue color
                    Color.fromRGBO(75, 76, 237, 1), // Lighter blue color
                  ],
                ),
              ),
            ),
            // Extreme text
            Positioned(
              top: 100,
              right: -30,
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'EXTREME',
                  style: GoogleFonts.allertaStencil(
                    fontSize: 120,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(31, 165, 165, 164),
                    letterSpacing: 4,
                  ),
                ),
              ),
            ),
            //
            Padding(
              padding: const EdgeInsets.only(top: 010, left: 15, right: 15),
              child: Column(children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        bobj.name,
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(55, 182, 233, 1),
                                Color.fromRGBO(72, 92, 236, 1),
                                Color.fromRGBO(75, 76, 237, 1),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            ),
            //Bike Imageee
            Positioned(
              top: 140,
              left: -20,
              child: Image.network(
                bobj.img,
                height: 350,
                width: 380,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 500,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(53, 63, 84, 0.8),
                        Color.fromRGBO(34, 40, 52, 0.8),
                      ])),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 110,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 0.5)),
                                  color: const Color.fromRGBO(36, 44, 59, 1),
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: const LinearGradient(colors: [
                                    Color.fromRGBO(53, 63, 84, 0.8),
                                    Color.fromRGBO(34, 40, 52, 0.8),
                                  ])),
                              child: const Text(
                                "Description",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 110,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 0.5)),
                                color: const Color.fromRGBO(72, 92, 236, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                "Specification",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          bobj.discription,
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(36, 44, 59, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            Text(
              bobj.price,
              style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyCards();
                }));
                cards.add(CardModel(
                    img: bobj.img, name: bobj.name, price: bobj.price));
              },
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 187,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(55, 182, 233, 1),
                        Color.fromRGBO(72, 92, 236, 1),
                        Color.fromRGBO(75, 76, 237, 1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Buy Now",
                  style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
