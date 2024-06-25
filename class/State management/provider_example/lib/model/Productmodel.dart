class productModel {
  String? img;
  String? name;
  int Quantity;
  bool? isFavourite;
  String? price;


productModel({
  required this.img,
  required this.name,
  required this.price,
  this.Quantity= 0,
  this.isFavourite = false,
});

}