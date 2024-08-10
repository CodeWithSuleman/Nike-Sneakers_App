class ProductModel {
  final int id;
  final String name;
  final int price;
  final String shoeImage;
  final String shoeCategory;
  final String shoeDescription;
  int quantity;
  int deliveryFee;
  final bool isFavorite;

  ProductModel({
    required this.id,
    required this.shoeCategory,
    required this.shoeDescription,
    required this.name,
    required this.price,
    required this.shoeImage,
    this.isFavorite = false,
    this.quantity = 1,
    this.deliveryFee = 60,
  });

  /// Total Price Calculation
  int get totalAmount => quantity * price;

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "deliveryFee": deliveryFee,
      "price": price,
      "shoeImage": shoeImage,
      "shoeCategory": shoeCategory,
      "shoeDescription": shoeDescription,
      "isFavorite": isFavorite,
      "quantity": quantity,
    };
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json["id"],
      deliveryFee: json["deliveryFee"],
      name: json["name"],
      price: json["price"],
      shoeImage: json["shoeImage"],
      shoeCategory: json["shoeCategory"],
      shoeDescription: json["shoeDescription"],
      isFavorite: json["isFavorite"],
      quantity: json["quantity"],
    );
  }

  // copyWith(
  //     {int? id,
  //     String? name,
  //     String? price,
  //     String? shoeImage,
  //     String? shoeCategory,
  //     String? shoeDescription,
  //     bool? isFavorite}) {
  //   return ProductModel(
  //     id: id ?? this.id,
  //     shoeCategory: shoeCategory ?? this.shoeCategory,
  //     shoeDescription: shoeDescription ?? this.shoeDescription,
  //     name: name ?? this.name,
  //     price: price ?? this.price,
  //     shoeImage: shoeImage ?? this.shoeImage,
  //     isFavorite: isFavorite ?? this.isFavorite,
  //   );
  // }
}
