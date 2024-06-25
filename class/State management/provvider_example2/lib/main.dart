import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provvider_example2/Controller/product_controller.dart';
import 'package:provvider_example2/Controller/wishlist_controller.dart';
import 'package:provvider_example2/View/get_product_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return Product();
        }),
        ChangeNotifierProvider(create: (context) {
          return Wishlist();
        })
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GetProductDetails(),
      ),
    );
  }
}
