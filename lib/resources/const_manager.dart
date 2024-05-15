import 'package:flutter/material.dart';

import '../model/beverages_model.dart';
import '../pages/empty_page.dart';
import '../pages/explore_page.dart';
import 'color_manager.dart';
import '../model/category_model.dart';

class ConstManager {
  static final List<Widget> pageOptions = [
    const EmptyPage(text: "Shop"),
    const ExplorePage(),
    const EmptyPage(text: "Home"),
    const EmptyPage(text: "Favourite"),
    const EmptyPage(text: "Profile"),
  ];

  static final List<CategoryModel> category = [
    CategoryModel(
      backgroundColor: ColorManager.lightGreen,
      borderColor: ColorManager.borderGreen,
      imageUrl: "assets/images/vegetables.png",
      text: "Frash Fruit\n& Vegetable",
    ),
    //2
    CategoryModel(
      backgroundColor: ColorManager.lightOrange,
      borderColor: ColorManager.borderOrange,
      imageUrl: "assets/images/oil.png",
      text: "Cooking Oil\n& Ghee",
    ),
    // 3
    CategoryModel(
      backgroundColor: ColorManager.lightRed,
      borderColor: ColorManager.borderRed,
      imageUrl: "assets/images/meat.png",
      text: "Meat & Fish",
    ),
    // 4
    CategoryModel(
      backgroundColor: ColorManager.lightPurple,
      borderColor: ColorManager.borderPurple,
      imageUrl: "assets/images/bakery.png",
      text: "Bakery & Snacks",
    ),
    // 5
    CategoryModel(
      backgroundColor: ColorManager.lightYellow,
      borderColor: ColorManager.borderYellow,
      imageUrl: "assets/images/dairy.png",
      text: "Dairy & Eggs",
    ),
    // 6
    CategoryModel(
      backgroundColor: ColorManager.lightBlue,
      borderColor: ColorManager.borderBlue,
      imageUrl: "assets/images/bevarages.png",
      text: "Beverages",
    ),
    // 7
    CategoryModel(
      backgroundColor: ColorManager.lightPurple,
      borderColor: ColorManager.borderPurple,
      imageUrl: "assets/images/vegetables.png",
      text: "Frash Fruit\n& Vegetable",
    ),
    // 8
    CategoryModel(
      backgroundColor: ColorManager.lightRed,
      borderColor: ColorManager.borderRed,
      imageUrl: "assets/images/vegetables.png",
      text: "Frash Fruit\n& Vegetable",
    )
  ];

  static final List<BeveragesModel> products = [
    // 1
    BeveragesModel(
      imageUrl: "/coke",
      name: "Diet Coke",
      volume: "355ml",
      price: "\$1.99",
    ),
    // 2
    BeveragesModel(
      imageUrl: "/sprite",
      name: "Sprite Can",
      volume: "325ml",
      price: "\$1.50",
    ),
    // 3
    BeveragesModel(
      imageUrl: "/grape",
      name: "Apple & Grape Juice",
      volume: "2L",
      price: "\$5.99",
    ),
    // 4
    BeveragesModel(
      imageUrl: "/juice",
      name: "Orenge Juice",
      volume: "2L",
      price: "\$8.99",
    ),
    // 5
    BeveragesModel(
      imageUrl: "/cola",
      name: "Coca Cola Can",
      volume: "325ml",
      price: "\$4.99",
    ),
    // 6
    BeveragesModel(
      imageUrl: "/pepsi",
      name: "Pepsi Can",
      volume: "330ml",
      price: "\$4.99",
    ),
  ];
}
