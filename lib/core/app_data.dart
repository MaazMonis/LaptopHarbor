import 'package:laptopharbor/src/model/bottom_navy_bar_item.dart';
import 'package:laptopharbor/src/model/recommended_product.dart';
import 'package:laptopharbor/src/model/product_size_type.dart';
import 'package:laptopharbor/src/model/product_category.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laptopharbor/src/model/categorical.dart';
import 'package:laptopharbor/src/model/numerical.dart';
import 'package:laptopharbor/src/model/product.dart';
import 'package:flutter/material.dart';

class AppData {
  const AppData._();

  static String dummyText =
      'Lorem Ipsum is simply dummy text of the printing and typesetting'
      ' industry. Lorem Ipsum has been the industry\'s standard dummy text'
      ' ever since the 1500s, when an unknown printer took a galley of type'
      ' and scrambled it to make a type specimen book.';

  static List<Product> products = [
    Product(
      name: 'HP EliteBook 840 G4',
      price: 80000,
      about: dummyText,
      isAvailable: true,
      off: 300,
      quantity: 0,
      images: [
        'assets/images/HP1.png',
        'assets/images/HP.png',
        'assets/images/HP2.png'
      ],
      isFavorite: true,
      rating: 1,
      type: ProductType.Laptop,
    ),
    Product(
      name: 'Macbook Pro M2',
      price: 1200,
      about: dummyText,
      isAvailable: false,
      off: 1000,
      quantity: 0,
      images: [
        'assets/images/ap.png',
        'assets/images/ap1.png',
        'assets/images/ap2.png'
      ],
      isFavorite: false,
      rating: 4,
      type: ProductType.Laptop,
    ),
    Product(
      name: 'Microsoft Surface Pro 4',
      price: 650,
      about: dummyText,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/mic.png',
        'assets/images/mic.png',
        'assets/images/mic.png'
      ],
      isFavorite: false,
      rating: 3,
      type: ProductType.Laptop,
    ),
    Product(
      name: 'Samsung Book 3',
      price: 100,
      about: dummyText,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/sam.png',
        'assets/images/sam.png',
        'assets/images/sam.png'
      ],
      isFavorite: false,
      rating: 5,

      type: ProductType.Laptop,
    ),
    Product(
      name: 'Acer Chromebook',
      price: 330,
      about: dummyText,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/aser.png',
        'assets/images/aser.png',
        'assets/images/aser.png'
      ],
      isFavorite: false,
      rating: 4,

      type: ProductType.Laptop,
    ),
    Product(
        name: 'Dell',
        price: 230,
        about: dummyText,
        isAvailable: true,
        off: null,
        quantity: 0,
        images: [
          'assets/images/dell.png',
          'assets/images/dell.png',
          'assets/images/dell.png'
        ],
        isFavorite: false,
        rating: 2,
        type: ProductType.Laptop),
    Product(
      name: 'Samsung Book1',
      price: 497,
      about: dummyText,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/sam1.png',
        'assets/images/sam1.png',
        'assets/images/sam1.png'
      ],
      isFavorite: false,
      rating: 3,

      type: ProductType.Laptop,
    ),
    Product(
      name: 'Toshiba',
      price: 498,
      about: dummyText,
      isAvailable: true,
      off: null,
      quantity: 0,
      images: [
        'assets/images/tos.png',
        'assets/images/tos.png',
        'assets/images/tos.png'
      ],
      isFavorite: false,

      rating: 2,
      type: ProductType.Laptop,
    ),
  ];

  static List<ProductCategory> categories = [


  ];

  static List<Color> randomColors = [
    const Color(0xFFFCE4EC),
    const Color(0xFFF3E5F5),
    const Color(0xFFEDE7F6),
    const Color(0xFFE3F2FD),
    const Color(0xFFE0F2F1),
    const Color(0xFFF1F8E9),
    const Color(0xFFFFF8E1),
    const Color(0xFFECEFF1),
  ];

  static List<BottomNavyBarItem> bottomNavyBarItems = [
    BottomNavyBarItem(
      "Home",
      const Icon(Icons.home),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "Favorite",
      const Icon(Icons.favorite),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "Cart",
      const Icon(Icons.shopping_cart),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
    BottomNavyBarItem(
      "Profile",
      const Icon(Icons.person),
      const Color(0xFFEC6813),
      Colors.grey,
    ),
  ];

  static List<RecommendedProduct> recommendedProducts = [
    RecommendedProduct(
      imagePath: "",
      cardBackgroundColor: const Color(0xFFEC6813),
    ),
    RecommendedProduct(
      imagePath: "",
      cardBackgroundColor: const Color(0xFF3081E1),
      buttonBackgroundColor: const Color(0xFF9C46FF),
      buttonTextColor: Colors.white,
    ),
  ];
}
