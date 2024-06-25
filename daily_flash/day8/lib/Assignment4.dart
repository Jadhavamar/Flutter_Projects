import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  Assignment4({super.key});

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
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                          )),
                      child: ClipOval(
                        child: Image.network(
                          imgList[index]["img"],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      imgList[index]["name"],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
