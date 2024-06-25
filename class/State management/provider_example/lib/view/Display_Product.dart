import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/controller/product_controller.dart';

class ProductDisplay extends StatelessWidget{

  const ProductDisplay({super.key});

  @override

  Widget build(BuildContext context){
    log("IN PRODUCT DISPLAY");
    var providerObj = Provider.of<ProductController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const  Text("Product Display"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),

  

      body: Center(
        child: Column(
          
          children: [
            const SizedBox(
              height: 20
            ),
            Image.network("${providerObj.productModelObj?.img}"),
            const SizedBox(height: 10),
            Text("${providerObj.productModelObj?.name}"),
            const SizedBox(height: 10),
            Text("${providerObj.productModelObj?.price}"),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                // IS FAVOURITE

                Consumer<ProductController>(builder: (context, Provider, child){
                  log("IN FAV CONSUMER");
                  return GestureDetector(
                    onTap: (){
                      providerObj.addToFavourite();
                    },
                    child: Icon(
                      (providerObj.productModelObj!.isFavourite!)
                      ? Icons.favorite_rounded
                      : Icons.favorite_outline_rounded, 
                    ),
                  );
                },
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      providerObj.addQuantity();
                    },
                    child:const  Icon(
                      Icons.add,
                    ),
                  ),
                  const SizedBox(
                    width: 5
                  ),

                  Consumer<ProductController>(builder: (context, Provider, child){
                  log("In QUANTITY");
                  return Text(
                    "${providerObj.productModelObj?.Quantity}");
                  },
                ),

                const SizedBox(width: 5),
                  GestureDetector(
                    onTap: (){
                      providerObj.removeQuantity();
                    },
                    child: Icon(Icons.remove),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}