import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Category {
  final String name;
  final List<String> subCategory;
  final FaIcon icon;
  final Color colorName;

  Category({
    required this.name,
    required this.subCategory,
    required this.icon,
    required this.colorName,
  });
}
