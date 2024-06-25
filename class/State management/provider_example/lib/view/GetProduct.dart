
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/controller/product_controller.dart';
import 'package:provider_example/model/Productmodel.dart';
import 'package:provider_example/view/Display_Product.dart';

class getproduct extends StatelessWidget {
    getproduct({super.key});

  final TextEditingController _nameTextEditingController =  
    TextEditingController();
  final TextEditingController _imgTextEditingController =  
    TextEditingController();
  final TextEditingController _priceTextEditingController =  
    TextEditingController();


  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("GET PRODUCT DETAILS"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          const  SizedBox(
            height: 20),

            // product Image

            TextFormField(
              controller: _imgTextEditingController,
              decoration: InputDecoration(
                hintText: "Add Image",
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // product Name

            TextFormField(
              controller: _nameTextEditingController,
              decoration: InputDecoration(
                hintText: "Enter Name",
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // product price

            TextFormField(
              controller: _priceTextEditingController,
              decoration: InputDecoration(
                hintText: "Enter Price",
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: (){
                var tempObj = productModel(
                  isFavourite: false,
                  price: _priceTextEditingController.text.trim(),
                  img: _imgTextEditingController.text.trim(),
                  name: _nameTextEditingController.text.trim(),
                  Quantity:0,
              );

              Provider.of<ProductController>(context, listen: false)
              .addProductData(pObj:tempObj);

              Navigator.push(context, MaterialPageRoute(builder: (context){
              return const ProductDisplay();
              }));
            }, 

            child:  const Text("SUBMIT"),
          
            
          ),
        ],
      )
    );
  }
}