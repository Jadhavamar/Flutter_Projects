import 'package:bycycle/model/BikeModelClass.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MyCards extends StatefulWidget {
  const MyCards({super.key});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.only(right: 25),
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(55, 182, 233, 1),
                      Color.fromRGBO(72, 92, 236, 1),
                      Color.fromRGBO(75, 76, 237, 1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
          )
        ],
        title: const Text(
          'My Shopping Cart',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return CartItem(
                      imageUrl: cards[index].img,
                      itemName: cards[index].name,
                      itemPrice: cards[index].price);
                },
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(53, 63, 84, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                hintText: '6Affg5',
                                hintStyle: const TextStyle(color: Colors.white),
                                filled: true,
                                fillColor: const Color.fromRGBO(46, 54, 69, 1),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(72, 92, 236, 1),
                            padding: const EdgeInsets.symmetric(
                                vertical: 14, horizontal: 24),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text('Apply',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Subtotal', style: TextStyle(color: Colors.white)),
                      Text('\$2,841.99', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Delivery fee',
                          style: TextStyle(color: Colors.white)),
                      Text('\$0', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Discount', style: TextStyle(color: Colors.white)),
                      Text('30%', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const Divider(color: Colors.white24),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text('\$1,989.37',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 25),
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(55, 182, 233, 1),
                          Color.fromRGBO(72, 92, 236, 1),
                          Color.fromRGBO(75, 76, 237, 1),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "check Out",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  final String imageUrl;
  final String itemName;
  final String itemPrice;

  const CartItem({
    super.key,
    required this.imageUrl,
    required this.itemName,
    required this.itemPrice,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // margin: EdgeInsets.only(bottom: 16),
      // padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2,
                        color: const Color.fromRGBO(255, 255, 255, 0.147)),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(5, 6),
                          blurRadius: 10,
                          spreadRadius: 1,
                          color: Color.fromRGBO(0, 0, 0, 0.25))
                    ],
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(53, 63, 84, 0.6),
                          Color.fromRGBO(34, 40, 52, 0),
                        ]),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(imageUrl, width: 80, height: 80)),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(itemName,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 16)),
                  const SizedBox(height: 4),
                  Text('\$$itemPrice',
                      style: const TextStyle(color: Colors.blue, fontSize: 16)),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_circle_outline,
                        color: Colors.white),
                  ),
                  const Text('1', style: TextStyle(color: Colors.white)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_outline,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            height: 2,
            color: Color.fromRGBO(255, 255, 255, 0.556),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
