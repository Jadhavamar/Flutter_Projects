import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petcare/Model/training.dart';

class Trainings extends StatefulWidget {
  const Trainings({super.key});

  @override
  State<Trainings> createState() => _TrainingsState();
}

class _TrainingsState extends State<Trainings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
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
                      "Training",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  child: ListView.builder(
                    physics: ScrollPhysics(parent: null),
                    shrinkWrap: true,
                    itemCount: itemModel.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,

                          ///shadow
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              itemModel[index].image,
                              height: 90,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    itemModel[index].Title,
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  width: 160,
                                  child: Text(
                                    itemModel[index].authorname,
                                    style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_border_outlined,
                                      color: Color.fromRGBO(245, 146, 69, 1),
                                    ),
                                    Text(
                                      "${itemModel[index].rating}",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(194, 195, 204, 1)),
                                    ),
                                    SizedBox(
                                      width: 10,
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
        ));
  }
}
