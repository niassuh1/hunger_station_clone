import 'package:flutter/material.dart';

class Category {
  final Widget icon;
  final String name;

  const Category({required this.icon, required this.name});
}

List<Category> categories = [
  const Category(icon: SizedBox(), name: 'All'),
  const Category(
      icon: Icon(Icons.fastfood_outlined, size: 16), name: 'Fast Food'),
  const Category(
      icon: Icon(Icons.breakfast_dining_outlined, size: 16),
      name: 'Sandwiches'),
  const Category(
      icon: Icon(Icons.kebab_dining_outlined, size: 16), name: 'Arabic'),
  const Category(icon: Icon(Icons.cake_outlined, size: 16), name: 'Dessert'),
];
