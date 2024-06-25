import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  Assignment2({super.key});

  List<Map> imgList = [
    {
      "img":
          "https://i.pinimg.com/236x/83/da/57/83da57a5d46e3239f65996d02c980d2b.jpg",
      "name": "gulab Jam"
    },
    {
      "img":
          "https://i.pinimg.com/564x/1a/d9/c6/1ad9c66944b814aa1a383d3cf2dc3db4.jpg",
      "name": "rasgulla"
    },
    {
      "img":
          "https://i.pinimg.com/564x/c5/d2/62/c5d262f3377da91a7229772026a2ec5c.jpg",
      "name": "biryani"
    },
    {
      "img":
          "https://i.pinimg.com/564x/22/90/59/22905909c24dd0d1cfa8695de86b57cb.jpg",
      "name": "paneer"
    },
    {
      "img":
          "https://i.pinimg.com/564x/95/6a/02/956a02736e720d2a1e27f439e841ed65.jpg",
      "name": "paneer"
    },
    {
      "img":
          "https://i.pinimg.com/564x/eb/cb/c6/ebcbc6aaa9deca9d6efc1efc93b66945.jpg",
      "name": "burgur"
    },
    {
      "img":
          "https://i.pinimg.com/564x/1a/d9/c6/1ad9c66944b814aa1a383d3cf2dc3db4.jpg",
      "name": "rasgulla"
    },
    {
      "img":
          "https://i.pinimg.com/564x/c5/d2/62/c5d262f3377da91a7229772026a2ec5c.jpg",
      "name": "biryani"
    },
    {
      "img":
          "https://i.pinimg.com/564x/22/90/59/22905909c24dd0d1cfa8695de86b57cb.jpg",
      "name": "paneer"
    },
    {
      "img":
          "https://i.pinimg.com/564x/95/6a/02/956a02736e720d2a1e27f439e841ed65.jpg",
      "name": "paneer"
    },
    {
      "img":
          "https://i.pinimg.com/564x/eb/cb/c6/ebcbc6aaa9deca9d6efc1efc93b66945.jpg",
      "name": "burgur"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                    )),
                    child: Image.network(
                      imgList[index]["img"],
                      width: 200,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    padding: const EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Text(imgList[index]["name"]),
                  )
                ],
              ),
            );
          }),
    );
  }
}
