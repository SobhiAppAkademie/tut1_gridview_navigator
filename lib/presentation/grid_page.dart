import 'package:flutter/material.dart';
import 'package:navigation_tut1/domain/product_item.dart';
import 'package:navigation_tut1/presentation/phone_card.dart';

class GridPage extends StatelessWidget {
  GridPage({super.key});

  // Unsere vorgefertigte Liste an iPhones
  final List<ProductItem> iphones = [
    ProductItem(
        title: "iPhone 11", memory: "64GB", color: Colors.green, price: 200),
    ProductItem(
        title: "iPhone 12",
        memory: "256GB",
        color: Colors.black,
        price: 499.99),
    ProductItem(
        title: "iPhone 13", memory: "64GB", color: Colors.white, price: 399),
    ProductItem(
        title: "iPhone 15 Pro",
        memory: "256GB",
        color: Colors.white,
        price: 799)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          // Unsere GridView
          child: GridView.count(
        crossAxisCount: 2, // Hier möchten wir 2 Widgets pro Zeile anzeigen
        children: [
          // Unser vordefiniertes Widget
          PhoneCard(item: iphones[0]),
          PhoneCard(item: iphones[1]),
          PhoneCard(item: iphones[2]),
          PhoneCard(item: iphones[3])
        ],
      )),
    );
  }
}
