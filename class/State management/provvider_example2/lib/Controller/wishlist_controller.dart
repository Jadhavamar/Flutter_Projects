import 'package:flutter/material.dart';
import 'package:provvider_example2/Model/product_model.dart';
import 'dart:developer';

class Wishlist extends ChangeNotifier {
  List<ProductModelClass> listOfWishlist = [];

  void addProductToWishlist(ProductModelClass obj) {
    log("Added to Wishlist");
    if (obj.isFavorite == true) {
      listOfWishlist.add(obj);
    } else {
      listOfWishlist.remove(obj);
    }
  }

  void removeProductFromWishlist({required int index}) {
    log("removed from wishlist");
    listOfWishlist.removeAt(index);
    
    notifyListeners();
  }
}
