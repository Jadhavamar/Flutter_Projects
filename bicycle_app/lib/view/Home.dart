import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // background
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height + 90,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    stops: [0.5, 0.5],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(36, 44, 59, 1), // Dark blue color
                      Color.fromRGBO(75, 76, 237, 1),
                    ]),
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
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                  SizedBox(
                      width: 200,
                      child: Text(
                        "choose Your Bicycle",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                  ),
                      const Spacer(),
                      Container(
                        height: 50,
                        width: 50,
                        decoration:  BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(55, 182, 233, 1),
                              Color.fromRGBO(72, 92, 236, 1),
                              Color.fromRGBO(75, 76, 237, 1),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(''),
                      )
                ],
              ),
              Container(
                    height: 250,
                    // shadowColor: Color.fromRGBO(0, 0, 0, 0.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.2),
                              Color.fromRGBO(0, 0, 0, 0)
                            ]),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(4, 7),
                            blurRadius: 10,
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          )
                        ]),
                    child: Row(
                      children: [
                        Image.network(
                          "https://firebasestorage.googleapis.com/v0/b/bicycle-app-31296.appspot.com/o/assets%2Fhome%2Fbi11.png?alt=media&token=c3d753b9-ddaa-4620-8a0d-cfe7451debcf",
                          height: 210,
                          width: 210,
                        ),
                        const Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "EXTREM",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 110,
                            ),
                            Text(
                              "30% OFF",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                   Row(
                    children: [
                      Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(55, 182, 233, 1),
                                  Color.fromRGBO(73, 84, 237, 1),
                                  Color.fromRGBO(75, 76, 237, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.pedal_bike_outlined,
                            size: 35,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 4)
                              ],
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(255, 255, 255, 1),
                                  Color.fromRGBO(161, 161, 161, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.network(
                            "https://firebasestorage.googleapis.com/v0/b/bicycle-app-31296.appspot.com/o/assets%2Fhome%2Fhelmet.png?alt=media&token=692794b5-8975-4702-9eda-cea89b820dfe",
                            height: 30,
                            width: 30,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 4)
                              ],
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(255, 255, 255, 1),
                                  Color.fromRGBO(161, 161, 161, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Image.network(
                            "https://firebasestorage.googleapis.com/v0/b/bicycle-app-31296.appspot.com/o/assets%2Fhome%2FglovesIcon.png?alt=media&token=fa48a7e7-ac6b-40a0-9916-72fd21b13ba8",
                            height: 30,
                            width: 30,
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(0, 4),
                                  blurRadius: 4)
                            ],
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(255, 255, 255, 1),
                                Color.fromRGBO(161, 161, 161, 1),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.network(
                          "https://firebasestorage.googleapis.com/v0/b/bicycle-app-31296.appspot.com/o/assets%2Fhome%2FbottleIcon.png?alt=media&token=5ab95873-40ec-4d50-8b80-6bc6876cb383",
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 400,
                    child: GridView.builder(
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: bikes.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 15),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return BikeDetail(
                                  bobj: BikeModelClass(
                                      img: bikes[index]["img"],
                                      discription: bikes[index]["dis"],
                                      name: bikes[index]["name"],
                                      type: bikes[index]["type"],
                                      price: bikes[index]["price"]),
                                );
                              }));
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: const LinearGradient(colors: [
                                        Color.fromRGBO(53, 63, 84, 0.6),
                                        Color.fromRGBO(34, 40, 52, 0.6)
                                      ])),
                                ),
                                Image.network(
                                  bikes[index]["img"],
                                  width: 150,
                                  height: 140,
                                ),
                                Positioned(
                                  top: 95,
                                  left: 5,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start, // Align text to the start
                                    children: [
                                      Text(
                                        bikes[index]["type"],
                                        style: const TextStyle(
                                          color:
                                              Color.fromRGBO(195, 195, 195, 1),
                                        ),
                                      ),
                                      Text(
                                        bikes[index]["name"],
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      Text(
                                        bikes[index]["price"],
                                        style: const TextStyle(
                                          color:
                                              Color.fromRGBO(195, 195, 195, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(36, 44, 59, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                _onItemTapped(0);
              },
              child: Container(
                height: 60,
                width: 55,
                decoration: BoxDecoration(
                    gradient: (_selectedIndex == 0)
                        ? const LinearGradient(colors: [
                            Color.fromRGBO(55, 182, 233, 1),
                            Color.fromRGBO(75, 76, 237, 1)
                          ])
                        : null,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13))),
                child: const Icon(
                  Icons.home,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemTapped(1);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyCards();
                }));
              },
              child: Container(
                height: 60,
                width: 55,
                decoration: BoxDecoration(
                    gradient: (_selectedIndex == 1)
                        ? const LinearGradient(colors: [
                            Color.fromRGBO(55, 182, 233, 1),
                            Color.fromRGBO(75, 76, 237, 1)
                          ])
                        : null,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13))),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemTapped(2);
              },
              child: Container(
                height: 60,
                width: 55,
                decoration: BoxDecoration(
                    gradient: (_selectedIndex == 2)
                        ? const LinearGradient(colors: [
                            Color.fromRGBO(55, 182, 233, 1),
                            Color.fromRGBO(75, 76, 237, 1)
                          ])
                        : null,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13))),
                child: const Icon(
                  Icons.wallet,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _onItemTapped(3);
              },
              child: Container(
                height: 60,
                width: 55,
                decoration: BoxDecoration(
                    gradient: (_selectedIndex == 3)
                        ? const LinearGradient(colors: [
                            Color.fromRGBO(55, 182, 233, 1),
                            Color.fromRGBO(75, 76, 237, 1)
                          ])
                        : null,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13))),
                child: const Icon(
                  Icons.person_2_outlined,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
                  ////////////////////////////////////////////////////////////Row()