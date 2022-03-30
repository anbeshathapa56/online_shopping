import 'package:flutter/material.dart';
class Product {
  final String image,title,description;
  final int price, size, id;
  final Color color;
  Product(
  this.image,
  this.title,
  this.description,
  this.price,
  this.size,
  this.color,
      this.id,
      );
}
List<Product> products = [
  Product
("assets/bag1.jpeg", "Bag", "Elegant Brown Bag", 1200, 12, Colors.grey, 1),
  Product
("assets/bag2.jpeg", "Bag", "Dailywear Bag", 1500, 16, Colors.grey, 2),
  Product
("assets/bag3.jpg", "bag", "Elegant Red Bag", 1500, 16, Colors.grey, 3),
  Product
("assets/bag4.jpg", "bag", "Penstemon Handbags", 1500, 16, Colors.grey, 4),
  Product
("assets/bag5.jpg", "bag", "Customized Sequin Beaded Fancy Bag", 1500, 16, Colors.grey, 5),
  Product
("assets/bag6.png", "bag", "Peal Floral Chain Shoulder Bag", 1500, 16, Colors.grey, 6),
  Product
("assets/bag7.jpg", "bag", "Party Wear Leather Bag", 1500, 16, Colors.grey, 7),
  Product
("assets/bag8.jpg", "bag", "Classic Fancy Green Bag", 1500, 16, Colors.grey, 8),
  Product
("assets/bag9.jpeg", "bag", "Jimmy Choo Fancy Bag", 1500, 16, Colors.grey, 9),
  Product
("assets/bag10.jpg", "bag", "Elegant Ladies Fancy Handbag", 1500, 16, Colors.grey, 10),
];