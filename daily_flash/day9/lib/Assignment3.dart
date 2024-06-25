import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  Assignment3({super.key});

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
          "https://i.pinimg.com/564x/1a/d9/c6/1ad9c66944b814aa1a383d3cf2dc3db4.jpg",
      "name": "rasgulla"
    },
    {
      "img":
          "https://i.pinimg.com/564x/c5/d2/62/c5d262f3377da91a7229772026a2ec5c.jpg",
      "name": "biryani"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(
                10,
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: Image.network(
                        imgList[index]["img"],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              border: Border.all()),
                          child: Text("${imgList[index]["name"]}1"),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              border: Border.all()),
                          child: Text("${imgList[index]["name"]}2"),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              border: Border.all()),
                          child: Text("${imgList[index]["name"]}3"),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.black,
                          )),
                      child: Icon(Icons.check),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
