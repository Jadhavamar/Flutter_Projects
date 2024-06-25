class ProductModelClass {
  String url;
  String productName;
  double productPrice;
  bool isFavorite;
  int quantity;

  ProductModelClass({
    required this.url,
    required this.productName,
    required this.productPrice,
    this.isFavorite = false,
    this.quantity = 1,
  });
}
