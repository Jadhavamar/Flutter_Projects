import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

import 'menu_class.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategories extends StatefulWidget {
  const MyCategories({super.key});

  @override
  State<MyCategories> createState() => _MyCategoriesState();
}

List categoriesList = [
  {"name": "Food", "img": "img/food.png"},
  {"name": "Fuel", "img": "img/fuel.png"},
  {"name": "Medicine", "img": "img/medicine.png"},
  {"name": "Shopping", "img": "img/shopping.png"}
];

class _MyCategoriesState extends State<MyCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawerClass(),
      appBar: AppBar(
        title: Text(
          "Categories",
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 23, right: 23),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: GridView.builder(
              itemCount: categoriesList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 24, mainAxisSpacing: 24, crossAxisCount: 2),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onLongPress: () {
                    ///
                    ///dialogbox open from here
                    _myDialogeBox();
                  },
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.15),
                              blurRadius: 8,
                              offset: Offset(0, 2))
                        ]),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(categoriesList[index]["img"]),
                          Text(
                            categoriesList[index]["name"],
                            style: GoogleFonts.poppins(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                );
              }),
        ),
      ),
      floatingActionButton: GestureDetector(
        //isExtended: true,

        onTap: () {
          _myBottomSheet();
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
                "Add Categories",
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  ///
  ///bottom sheet function
  void _myBottomSheet() {
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
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 37, left: 110, bottom: 10),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 74,
                            width: 74,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(40, 128, 128, 0.2),
                            ),
                            child: Image.asset("img/imgIcon.png"),
                          ),
                          Text(
                            "Add",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Image URL",
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
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: "Enter URL",
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
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              hintText: "Enter category name",
                              hintStyle: GoogleFonts.poppins()),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100, top: 35),
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

  ///
  ///
  ///Dialoge box popup
  void _myDialogeBox() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Delete Category",
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            titlePadding: const EdgeInsets.only(left: 60, top: 20),
            content: Expanded(
              child: Text(
                "Are you sure you want to delete the selected category?",
                style: GoogleFonts.poppins(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(14, 161, 125, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Delete",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(140, 128, 128, 0.2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
