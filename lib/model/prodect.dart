// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ProdectModel {
  num id;
  String title;
  String description;
  num price;
  num discountPercentage;
  num rating;
  String brand;
  List<String> images;
  String thumbnail;
  String category;
  num stock;
  ProdectModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.brand,
    required this.images,
    required this.thumbnail,
    required this.category,
    required this.stock,
  });

  ProdectModel copyWith({
    num? id,
    String? title,
    String? description,
    num? price,
    num? discountPercentage,
    num? rating,
    String? brand,
    List<String>? images,
    String? thumbnail,
    String? category,
    num? stock,
  }) {
    return ProdectModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      price: price ?? this.price,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      rating: rating ?? this.rating,
      brand: brand ?? this.brand,
      images: images ?? this.images,
      thumbnail: thumbnail ?? this.thumbnail,
      category: category ?? this.category,
      stock: stock ?? this.stock,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'discountPercentage': discountPercentage,
      'rating': rating,
      'brand': brand,
      'images': images,
      'thumbnail': thumbnail,
      'category': category,
      'stock': stock,
    };
  }

  factory ProdectModel.fromMap(Map<dynamic, dynamic> map) {
    return ProdectModel(
      id: map['id'] as num,
      title: map['title'] as String,
      description: map['description'] as String,
      price: map['price'] as num,
      discountPercentage: map['discountPercentage'] as num,
      rating: map['rating'] as num,
      brand: map['brand'] as String,
      images: List<String>.from(
        (map['images']),
      ),
      thumbnail: map['thumbnail'] as String,
      category: map['category'] as String,
      stock: map['stock'] as num,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdectModel.fromJson(String source) =>
      ProdectModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProdectModel(id: $id, title: $title, description: $description, price: $price, discountPercentage: $discountPercentage, rating: $rating, brand: $brand, images: $images, thumbnail: $thumbnail, category: $category, stock: $stock)';
  }

  @override
  bool operator ==(covariant ProdectModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.description == description &&
        other.price == price &&
        other.discountPercentage == discountPercentage &&
        other.rating == rating &&
        other.brand == brand &&
        listEquals(other.images, images) &&
        other.thumbnail == thumbnail &&
        other.category == category &&
        other.stock == stock;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        price.hashCode ^
        discountPercentage.hashCode ^
        rating.hashCode ^
        brand.hashCode ^
        images.hashCode ^
        thumbnail.hashCode ^
        category.hashCode ^
        stock.hashCode;
  }
}
