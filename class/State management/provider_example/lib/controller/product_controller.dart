import 'package:flutter/material.dart';
import 'package:provider_example/model/Productmodel.dart';

class ProductController with ChangeNotifier {
  productModel? productModelObj;

  // Add product data 

  void addProductData({required productModel pObj}){
    productModelObj = pObj;
  }

  // ADD TO FAVOURITE

  void addToFavourite(){
    productModelObj!.isFavourite = !productModelObj!.isFavourite!;
    notifyListeners();
  }

  //ADD QUANTITY

  void addQuantity(){
    productModelObj?.Quantity++;
    notifyListeners();
  }

  //REMOVE QUANTITY

  void removeQuantity(){
    productModelObj?.Quantity--;
    notifyListeners();
  }
}