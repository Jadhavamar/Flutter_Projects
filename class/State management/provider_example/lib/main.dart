import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/controller/product_controller.dart';
import 'package:provider_example/view/GetProduct.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ProductController();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: getproduct(),
      ),
    );
  }
}
