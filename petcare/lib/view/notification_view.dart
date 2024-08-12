import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 146, 96, 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                    ),
                  ),
                  Text(
                    "Notifications",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Today",
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(252, 219, 193, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Color.fromRGBO(245, 146, 69, 1),
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 250,
                              child: Text(
                                "Your checkout is successfull, product is on tne way",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "25 September",
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(252, 219, 193, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Color.fromRGBO(245, 146, 69, 1),
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 250,
                              child: Text(
                                "Your checkout is successfull, product is on tne way",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Text(
                "15 September",
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(252, 219, 193, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Color.fromRGBO(245, 146, 69, 1),
                                )),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 250,
                              child: Text(
                                "Your checkout is successfull, product is on tne way",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
