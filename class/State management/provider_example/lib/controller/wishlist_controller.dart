
import 'package:flutter/material.dart';
import 'package:provider_example/model/Productmodel.dart';

class Wishlistcontroller with ChangeNotifier{

  List<productModel> listOfWishlistProducts = [];

  void addProductDatalist ({productModel? obj}){
    listOfWishlistProducts.add(obj!);
    
  }

  void removeWishlist({required int index}){
    listOfWishlistProducts.removeAt(index);
    notifyListeners();
  }   
}