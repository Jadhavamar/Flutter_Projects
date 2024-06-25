import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provvider_example2/Controller/product_controller.dart';
import 'package:provvider_example2/Controller/wishlist_controller.dart';
import 'package:provvider_example2/View/wishlist_display.dart';

class DisplayProductDetails extends StatefulWidget {
  const DisplayProductDetails({super.key});

  @override
  State createState() => _DisplayProductDetailsState();
}

class _DisplayProductDetailsState extends State {
  @override
  Widget build(BuildContext context) {
    Product providerObj = Provider.of<Product>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Product Details",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const WishlistDisplay();
                },
              ));
            },
            child: const Icon(Icons.favorite,
                size: 28, weight: 10, color: Colors.black),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: providerObj.productList.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 241, 241),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  )
                ]),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: 150,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(
                    providerObj.productList[index].url,
                    //fit: BoxFit.fill,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      providerObj.productList[index].productName,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "₹ ${providerObj.productList[index].productPrice}",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                Consumer(
                  builder: (context, value, child) {
                    return Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            providerObj
                                .addIsFavorite(providerObj.productList[index]);
                            Provider.of<Wishlist>(context,listen: false).addProductToWishlist(
                                providerObj.productList[index]);
                          },
                          child: Icon(
                              providerObj.productList[index].isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                              size: 30,
                              weight: 10,
                              color: providerObj.productList[index].isFavorite
                                  ? Colors.red
                                  : Colors.black),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            providerObj.addQuantity(
                              providerObj.productList[index],
                            );
                          },
                          child: const Icon(
                            Icons.add,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${providerObj.productList[index].quantity}",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            providerObj.removeQuantity(
                              providerObj.productList[index],
                            );
                          },
                          child: const Icon(
                            Icons.remove,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
