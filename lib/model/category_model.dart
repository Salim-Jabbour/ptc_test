import 'package:flutter/material.dart';

class CategoryModel {
  final Color backgroundColor;
  final Color borderColor;
  final String imageUrl;
  final String text;

  CategoryModel(
      {required this.backgroundColor,
      required this.borderColor,
      required this.imageUrl,
      required this.text});
}
