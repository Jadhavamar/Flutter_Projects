import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu_class.dart';

class TrashScreen extends StatefulWidget {
  const TrashScreen({super.key});

  @override
  State<TrashScreen> createState() => _TrashScreenState();
}

List exp = [
  {
    "title": "Medicine",
    "dis":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry... more  ",
    "date": "3 June | 11:50 AM",
    "amount": 500
  }
];

class _TrashScreenState extends State<TrashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawerClass(),
      appBar: AppBar(
          title: Text(
        "Graphs",
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
      )),
      body: ListView.builder(
          itemCount: exp.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.only(left: 11, right: 15),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.remove_circle,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${exp[index]["title"]}",
                                style: GoogleFonts.poppins(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "${exp[index]["dis"]}",
                                style: GoogleFonts.poppins(
                                    fontSize: 10, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${exp[index]["amount"]}",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        Text(
                          "${exp[index]["date"]}",
                          style: GoogleFonts.poppins(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const Divider()
                  ],
                ),
              ),
            );
          }),
    );
  }
}
