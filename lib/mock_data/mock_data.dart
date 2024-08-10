import 'package:nike_sneakers/constants/app_images.dart';
import 'package:nike_sneakers/mock_data/product_model.dart';

class MockData {
  /// Home Screen
  /// For Category tile

  List<String> categoryList = ["All Shoes", "Outdoor", "Tennis"];

  ///List of favorite Products

  static List<ProductModel> favoriteProducts = [];

  ///List of cart Products

  static List<ProductModel> myCart = [];

  /// List of Products
  List<ProductModel> productsList = [
    ProductModel(
      id: 1,
      name: "Nike Jordan",
      price: 302,
      deliveryFee: 60,
      shoeImage: AppImages.shoe002,
      shoeCategory: "Men's Shoes",
      shoeDescription:
          'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........',
    ),
    ProductModel(
      id: 2,
      shoeDescription:
          'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........',
      name: "Nike Air Max",
      price: 752,
      deliveryFee: 60,
      shoeImage: AppImages.shoe003,
      shoeCategory: "Men's Shoes",
    ),
    ProductModel(
      id: 3,
      shoeDescription:
          'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........',
      name: "Nike AlphaFly",
      price: 300,
      deliveryFee: 60,
      shoeImage: AppImages.shoe004,
      shoeCategory: "Men's Shoes",
    ),
    ProductModel(
      id: 4,
      shoeDescription:
          'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........',
      name: "Nike Pegasus",
      price: 155,
      deliveryFee: 60,
      shoeImage: AppImages.shoe005,
      shoeCategory: "Men's Shoes",
    ),
    ProductModel(
      id: 5,
      name: "Nike Air VaporMax",
      price: 220,
      deliveryFee: 60,
      shoeImage: AppImages.shoe006,
      shoeDescription:
          'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........',
      shoeCategory: "Men's Shoes",
    ),
    ProductModel(
      id: 6,
      name: "Nike Air VaporFly",
      price: 275,
      deliveryFee: 60,
      shoeImage: AppImages.shoe007,
      shoeDescription:
          'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........',
      shoeCategory: "Men's Shoes",
    ),
    ProductModel(
      id: 7,
      name: "Nike Invincible",
      shoeDescription:
          'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........',
      price: 175,
      deliveryFee: 60,
      shoeImage: AppImages.shoe008,
      shoeCategory: "Men's Shoes",
    ),
  ];
}
