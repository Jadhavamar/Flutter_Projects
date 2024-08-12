import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

String? imageLink;
String? subImg;

String specific = " ";
String nm = " ";

class Info extends StatelessWidget {
  Info(String main, String specification, String name, String img) {
    imageLink = main;
    specific = specification;
    nm = name;
    subImg = img;
  }
  @override
  Widget build(BuildContext context) {
    return const LaptopInfo();
  }
}

class LaptopInfo extends StatefulWidget {
  const LaptopInfo({super.key});

  @override
  State<LaptopInfo> createState() => _LaptopInfoState();
}

class _LaptopInfoState extends State<LaptopInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
                margin: const EdgeInsets.only(top: 50, left: 15, right: 15),
                width: double.infinity,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.black, width: 2))),
                // color: Colors.grey.shade300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                        right: BorderSide(color: Colors.black, width: 2),
                      )),
                      child: Image.network("${imageLink}"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border: Border(
                        right: BorderSide(color: Colors.black, width: 2),
                      )),
                      child: Image.network("${subImg}"),
                    ),
                  ],
                )),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                    //   color: Colors.grey.shade100,
                    //  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                    //  border: Border(top: BorderSide(color: Colors.black , width: 2))
                    ),

                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 340,
                          child: Text(
                            nm,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Rs 400",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                            Text(
                              "- Rs 1,000",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 22,
                                  decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text("(-45%)"),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          child: TextButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                fixedSize:
                                    MaterialStatePropertyAll(Size(350, 40)),
                              ),
                              child: const Text(
                                " BUY NOW ",
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // const  Row(
                        //   children: [
                        //     Icon(Icons.favorite_outline, color: Colors.red,),
                        //     SizedBox(width: 5,),
                        //  Text("ADD TO WISHLIST ",style: TextStyle(color: Colors.red),)

                        //   ],
                        //  )
                      ],
                    ),
                    const SizedBox(
                        width: double.infinity,
                        child: Text("Specification",
                            style: TextStyle(fontSize: 30))),
                    Text(
                      specific,
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
                //  Text("Description",style: TextStyle(fontSize: ),)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
