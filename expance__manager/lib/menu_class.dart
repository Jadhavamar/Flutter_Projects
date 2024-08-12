import 'package:expance__manager/categories.dart';
import 'package:expance__manager/graph_screen.dart';
import 'package:expance__manager/home.dart';
import 'package:expance__manager/trashScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawerClass extends StatefulWidget {
  const MyDrawerClass({super.key});

  @override
  State<MyDrawerClass> createState() => _MyDrawerClassState();
}

class _MyDrawerClassState extends State<MyDrawerClass> {
  static int _selectedButtonIndex =
      1; // Initialize with -1 to indicate no button selected

  void _onButtonPressed(int index) {
    setState(() {
      _selectedButtonIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 35.0, left: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "       Expense Manager",
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Text(
              "      Saves all your Transactions",
              style: GoogleFonts.poppins(
                  fontSize: 10, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 25,
            ),

//=========>>> Transation
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                _onButtonPressed(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  }),
                );
              },
              child: Container(
                height: 40,
                width: 184,
                decoration: BoxDecoration(
                  color: (_selectedButtonIndex == 1)
                      ? const Color.fromRGBO(14, 161, 125, 0.15)
                      : null,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("img/transation.jpg"),
                    Text(
                      "  Transaction",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            /////
            ///     ///Graph
            GestureDetector(
              onTap: () {
                _onButtonPressed(2);
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const GraphScreen();
                }));
              },
              child: Container(
                height: 40,
                width: 184,
                decoration: BoxDecoration(
                  color: (_selectedButtonIndex == 2)
                      ? const Color.fromRGBO(14, 161, 125, 0.15)
                      : null,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("img/graph.jpg"),
                    Text(
                      "  Graphs",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            ///
            /// Catagory
            GestureDetector(
              onTap: () {
                _onButtonPressed(3);
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyCategories();
                }));
              },
              child: Container(
                height: 40,
                width: 184,
                decoration: BoxDecoration(
                  color: (_selectedButtonIndex == 3)
                      ? const Color.fromRGBO(14, 161, 125, 0.15)
                      : null,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("img/category.jpg"),
                    Text(
                      "  Category ",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            ///
            ///
            ///trash
            GestureDetector(
              onTap: () {
                _onButtonPressed(4);
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const TrashScreen();
                }));
              },
              child: Container(
                height: 40,
                width: 184,
                decoration: BoxDecoration(
                  color: (_selectedButtonIndex == 4)
                      ? const Color.fromRGBO(14, 161, 125, 0.15)
                      : null,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("img/delete.jpg"),
                    Text(
                      "  Trash",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                _onButtonPressed(5);
              },
              child: Container(
                height: 40,
                width: 184,
                decoration: BoxDecoration(
                  color: (_selectedButtonIndex == 5)
                      ? const Color.fromRGBO(14, 161, 125, 0.15)
                      : null,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("img/person.jpg"),
                    Text(
                      "  About us",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
