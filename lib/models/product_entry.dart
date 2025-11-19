// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
  String id;
  String title;
  String content;
  String category;
  dynamic thumbnail;
  int price;
  int stock;
  bool isFeatured;
  int userId;
  String userUsername;

  ProductEntry({
    required this.id,
    required this.title,
    required this.content,
    required this.category,
    required this.thumbnail,
    required this.price,
    required this.stock,
    required this.isFeatured,
    required this.userId,
    required this.userUsername,
  });

  factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
    id: json["id"],
    title: json["title"],
    content: json["content"],
    category: json["category"],
    thumbnail: json["thumbnail"] ?? "",
    price: json["price"],
    stock: json["stock"],
    isFeatured: json["is_featured"],
    userId: json["user_id"],
    userUsername: json["user_username"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "content": content,
    "category": category,
    "thumbnail": thumbnail,
    "price": price,
    "stock": stock,
    "is_featured": isFeatured,
    "user_id": userId,
    "user_username": userUsername,
  };
}
