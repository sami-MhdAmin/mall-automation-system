import 'package:json_annotation/json_annotation.dart';

part 'favorite_model.g.dart';

@JsonSerializable()
class FavoriteModel {
  final List<FavoriteDataResponse>? data;
  final String? message;

  FavoriteModel({
    this.data,
    this.message,
  });

  factory FavoriteModel.fromJson(Map<String, dynamic> json) =>
      _$FavoriteModelFromJson(json);
  Map<String, dynamic> toJson() => _$FavoriteModelToJson(this);
}

@JsonSerializable()
class FavoriteDataResponse {
  final int? id;
  final String? name;
  final String? description;
  final int? size;
  final String? color;
  final int? height;
  final int? length;
  final String? weight;
  final String? width;
  final int? quantity;
  @JsonKey(name: 'store_id')
  final int? storeId;
  @JsonKey(name: 'category_id')
  final int? categoryId;
  final int? price;
  final String? image;
  @JsonKey(name: 'discount_id')
  final int? discountId;
  final FavoriteDataResponsePivot? pivot;

  FavoriteDataResponse(
    this.id,
    this.name,
    this.description,
    this.size,
    this.color,
    this.height,
    this.length,
    this.weight,
    this.width,
    this.quantity,
    this.storeId,
    this.categoryId,
    this.price,
    this.image,
    this.discountId,
    this.pivot,
  );

  factory FavoriteDataResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoriteDataResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FavoriteDataResponseToJson(this);
}

@JsonSerializable()
class FavoriteDataResponsePivot {
  @JsonKey(name: 'user_id')
  final int? userId;
  @JsonKey(name: 'store_product_id')
  final int? storeProductId;

  FavoriteDataResponsePivot({
    this.userId,
    this.storeProductId,
  });

  factory FavoriteDataResponsePivot.fromJson(Map<String, dynamic> json) =>
      _$FavoriteDataResponsePivotFromJson(json);
  Map<String, dynamic> toJson() => _$FavoriteDataResponsePivotToJson(this);
}
