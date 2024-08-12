import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Veterinarys extends StatefulWidget {
  const Veterinarys({super.key});

  @override
  State<Veterinarys> createState() => _VeterinarysState();
}

class _VeterinarysState extends State<Veterinarys> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color.fromRGBO(0, 0, 0, 1),
          selectedItemColor: const Color.fromRGBO(245, 146, 69, 1),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 27,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_outline,
                size: 27,
              ),
              label: "Service",
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Color.fromRGBO(245, 146, 96, 1),
                radius: 30,
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history_outlined,
                size: 27,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 27,
              ),
              label: "Profile",
            ),
          ],
          currentIndex: index,
          onTap: (int) {
            index = int;
            setState(() {});
          },
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Color.fromRGBO(245, 146, 69, 1),
                      size: 27,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "London, UK",
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
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
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "In Love With Pets? Get all what you need for them ",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "Assets/Veterinary/veter.png",
                        height: 150,
                        width: 328,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset("Assets/Category/image3.png"),
                        Text(
                          "Vaccinations",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(245, 146, 69, 1),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("Assets/Veterinary/Operations.png"),
                        Text(
                          "Operations",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(245, 146, 69, 1),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("Assets/Veterinary/Behaviorals.png"),
                        Text(
                          "Behaviorals",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(245, 146, 69, 1),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("Assets/Veterinary/Dentistry.png"),
                        Text(
                          "Dentistry",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(245, 146, 69, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Best Specialists Nearby",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("Assets/Veterinary/doctor1.png"),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 160,
                                  child: Text(
                                    "Dr. Maria Nai",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  child: Text(
                                    "Veterinary Dentist",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(
                                            194, 195, 204, 1)),
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.star_border_outlined,
                                      color: Color.fromRGBO(245, 146, 69, 1),
                                    ),
                                    Text(
                                      "4.8",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(194, 195, 204, 1)),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Color.fromRGBO(245, 146, 69, 1),
                                    ),
                                    Text(
                                      "2.5 km",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(194, 195, 204, 1),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
