import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provvider_example2/Controller/product_controller.dart';
import 'package:provvider_example2/Controller/wishlist_controller.dart';

class WishlistDisplay extends StatefulWidget {
  const WishlistDisplay({super.key});

  @override
  State createState() => _WishlistDisplayState();
}

class _WishlistDisplayState extends State {
  @override
  Widget build(BuildContext context) {
    Wishlist providerObj = Provider.of<Wishlist>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Wishlist",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Consumer(
        builder: (BuildContext context, value, Widget? child) {
          return ListView.builder(
            itemCount: Provider.of<Wishlist>(context).listOfWishlist.length,
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
                        providerObj.listOfWishlist[index].url,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          providerObj.listOfWishlist[index].productName,
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
                          "₹ ${providerObj.listOfWishlist[index].productPrice}",
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
                                Provider.of<Product>(context,listen: false)
                                    .addIsFavorite(providerObj.listOfWishlist[index]);
                                providerObj.removeProductFromWishlist(
                                    index: index);
                                
                              },
                              child: Icon(
                                  providerObj.listOfWishlist[index].isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  size: 30,
                                  weight: 10,
                                  color: providerObj
                                          .listOfWishlist[index].isFavorite
                                      ? Colors.red
                                      : Colors.black),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
