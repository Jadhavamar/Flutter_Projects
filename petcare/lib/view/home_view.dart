import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("Assets/image.png"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Amar",
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Good Morning!",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(194, 195, 204, 1)),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.notifications_outlined),
                  ],
                ),
                SizedBox(
                  height: 20,
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "In Love With Pets? ",
                            style: GoogleFonts.poppins(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 188,
                            child: Text(
                              "Get all what you need for them",
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromARGB(245, 146, 69, 1)),
                            ),
                          ),
                        ],
                      ),
                      Image.asset("Assets/image2.png")
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Category",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
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
                          "Veterinary",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("Assets/Category/image4.png"),
                        Text(
                          "Grooming",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("Assets/Category/image5.png"),
                        Text(
                          "Pet Store",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset("Assets/Category/image6.png"),
                        Text(
                          "Training",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
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
                    "Event",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 160,
                            child: Text(
                              "Find and Join in Special Events For Your Pets!",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                fixedSize:
                                    MaterialStatePropertyAll(Size(89, 34)),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromRGBO(245, 146, 69, 1)),
                              ),
                              child: Text(
                                "See More",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              )),
                        ],
                      ),
                      Image.asset("Assets/image7.png")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    "community",
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 160,
                            child: Text(
                              "Connect and share with communities! ",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                fixedSize:
                                    MaterialStatePropertyAll(Size(89, 34)),
                                backgroundColor: MaterialStatePropertyAll(
                                    Color.fromRGBO(245, 146, 69, 1)),
                              ),
                              child: Text(
                                "See More",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              )),
                        ],
                      ),
                      Image.asset("Assets/cummunity.png")
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
