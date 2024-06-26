import'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';
List<Product> productFromJson(dynamic str) =>
 List<Product>.from((str).map((e) => Product.fromJson(e)));
@freezed

abstract class Product with _$Product{
  factory Product({
  String? productId,
  String? image,
  String? name,
  String? description,
  double? price,
  double? oldprice,
  bool? isAvailable,
  String? categoryname,
  String? companyname,
  String? companyaddress,
  String? city,
  String? user_id,
  String? phonenumber
  })= _Product;
  factory Product.fromJson(Map<String,dynamic>json)=> _$ProductFromJson(json);
}