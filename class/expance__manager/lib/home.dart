import 'package:expance__manager/menu_class.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List exp = [
  {
    "title": "Medicine",
    "dis": "Lorem Ipsum is simply dummy text of the",
    "date": "3 June | 11:50 AM",
    "amount": 500
  }
];
//MyDrawer he function dusarya class madhe aahe mahnun tyala aananya sathi tya
// class cha object banvala

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "June 2022",
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 19),
            //search  Icon
            child: Image.asset(
              "img/Search_alt.png",
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
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
                        Image.asset("img/medi.png"),
                        const SizedBox(
                          width: 17,
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
                        const Icon(
                          Icons.remove_circle,
                          color: Colors.red,
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
      floatingActionButton: GestureDetector(
        //isExtended: true,

        onTap: () {
          bottom(context);
        },
        child: Container(
          height: 46,
          width: 166,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(67),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 4,
                    offset: Offset(0, 4))
              ]),
          child: Row(
            children: [
              const SizedBox(
                width: 14,
              ),
              const Icon(
                Icons.add_circle_sharp,
                size: 32,
                color: Color.fromRGBO(14, 161, 125, 1),
              ),
              Text(
                "Add Transaction",
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: const MyDrawerClass(),
    );
  }

  TextEditingController date_Controller = TextEditingController();
//Bottomsheet
  void bottom(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFormField(
                          controller: date_Controller,
                          readOnly: true,
                          onTap: () async {
                            DateTime? datepicke = await (showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2023),
                                lastDate: DateTime(2030)));

                            String formateDate =
                                DateFormat.yMMMd().format(datepicke!);
                            date_Controller.text = formateDate;
                            setState(() {});
                          },
                          //keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: " Date",
                              contentPadding:
                                  const EdgeInsets.only(top: 5, left: 7),
                              hintStyle: GoogleFonts.poppins()),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Amount",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(top: 5, left: 7),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: "Amount",
                              hintStyle: GoogleFonts.poppins()),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Category",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(top: 5, left: 7),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: "Category",
                              hintStyle: GoogleFonts.poppins()),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.only(top: 5, left: 7),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: "Description",
                              hintStyle: GoogleFonts.poppins()),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Container(
                        height: 40,
                        width: 123,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(14, 161, 125, 1),
                            borderRadius: BorderRadius.circular(67)),
                        child: Center(
                          child: Text(
                            "Add",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
