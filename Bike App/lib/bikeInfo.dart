import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:practiceapplication/open.dart';
import 'database.dart';

List rentBike = [];

class Ride {
  final String name;
  final String mainImage;
  final String subImage1;
  final String specification;

  Ride({
    required this.name,
    required this.subImage1,
    required this.specification,
    required this.mainImage,
  });

  Map<String, dynamic> riderMap() {
    return {
      'name': name,
      'mainImage': mainImage,
      'subImage1': subImage1,
      'specification': specification
    };
  }

  @override
  String toString() {
    return '{ name: $name , mainImage:$mainImage , subImage1:$subImage1 , specification:$specification}';
  }
}

class bike extends StatefulWidget {
  const bike({super.key});

  @override
  State<bike> createState() => _bikeState();
}

class _bikeState extends State<bike> {
  void data() async {
    rentBike = await getBikeData();
  }

  @override
  void initState() {
    data();
    // TODO: implement initState
    super.initState();
  }

  final TextEditingController _name = TextEditingController();
  final TextEditingController _mainImage = TextEditingController();
  final TextEditingController _subImage = TextEditingController();
  final TextEditingController _specification = TextEditingController();

  TextEditingController dateController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController discriptionController = TextEditingController();

  void showBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,

              // TO AVOID THE KEYBOARD OVERLAP THE SCRREN

              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Fill your Information ",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "name ",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      //controller: titleController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Contact number ",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      //controller: titleController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "adress",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      //   controller: discriptionController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        color: const Color.fromRGBO(0, 139, 148, 1),
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      //  controller: dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.date_range_rounded),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025),
                        );

                        String formatedDate =
                            DateFormat.yMMMd().format(pickeddate!);
                        setState(() {
                          dateController.text = formatedDate;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        });
  }

  void showBottomSheetForInsert() {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,

              // TO AVOID THE KEYBOARD OVERLAP THE SCRREN

              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Bike Name ",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: _name,
                        decoration: InputDecoration(
                          hintText: "name of Bike",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.purpleAccent),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextField(
                        controller: _mainImage,
                        decoration: InputDecoration(
                          hintText: "main Image Adress",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.purpleAccent),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      TextField(
                        controller: _subImage,
                        decoration: InputDecoration(
                          hintText: "sub Image",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Colors.purpleAccent),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      TextField(
                        controller: _specification,
                        decoration: InputDecoration(
                          hintText: "specification",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.purple),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                    onPressed: () async {
                      await insertBike(Ride(
                        name: _name.text,
                        mainImage: _mainImage.text,
                        subImage1: _subImage.text,
                        specification: _specification.text,
                      ));

                      rentBike = await getBikeData();
                      _name.clear();
                      _mainImage.clear();
                      _subImage.clear();
                      _specification.clear();
                      Navigator.pop(context);
                      setState(() {});
                    },
                    child: Text(
                      "Submit",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showBottomSheetForInsert();
            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            leading: const Icon(
              Icons.location_pin,
              color: Colors.red,
            ),
            title: Text(
              "Pune",
              style: GoogleFonts.quicksand(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.directions_bike_rounded,
                  color: Colors.pinkAccent,
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 331,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black45,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 10),
                                  child: Icon(Icons.handshake_outlined,
                                      color: Colors.green),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 10),
                                  child: Text(
                                    "Our Features",
                                    style: GoogleFonts.quicksand(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Text(
                                " -  Safe And Sanitised Vehicle",
                                style: GoogleFonts.quicksand(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Text(
                                " -  Instant And Secure Payments",
                                style: GoogleFonts.quicksand(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Text(
                                " -  Full Insured Ride",
                                style: GoogleFonts.quicksand(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Our Renting Fleet",
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Bike",
                        style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Scooter",
                        style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 9,
                  ),
                  Container(
                    height: 350,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: rentBike.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            width: 270,
                            height: 300,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color.fromRGBO(255, 255, 255, 1),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    blurRadius: 5,
                                    offset: Offset(5, 5),
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, left: 8),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          colors: [Colors.blue, Colors.pink]),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      "Starting at 400/day",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Info(
                                            "${rentBike[index].mainImage}",
                                            "${rentBike[index].specification}",
                                            "${rentBike[index].name}",
                                            "${rentBike[index].subImage1}");
                                      }));
                                    },
                                    child: Image.network(
                                        "${rentBike[index].mainImage}",
                                        width: 300.0,
                                        height: 150.0,
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                // const SizedBox(
                                //   height: 5,
                                // ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "${rentBike[index].name}",
                                        style: GoogleFonts.quicksand(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: TextButton(
                                              onPressed: () {
                                                showBottomSheet();
                                              },
                                              child: Text(
                                                "Book",
                                                style: GoogleFonts.quicksand(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // Padding(
                                //   padding: const EdgeInsets.only(left: 7.0),
                                //   child: Text(
                                //     "Pulshar",
                                //     style: GoogleFonts.quicksand(
                                //       fontSize: 20,
                                //       fontWeight: FontWeight.w500,
                                //       color: Colors.black,
                                //     ),
                                //   ),
                                // )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
          backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
          bottomNavigationBar:
              BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
        ));
  }
}
