// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) =>
    FavoriteModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => FavoriteDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$FavoriteModelToJson(FavoriteModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

FavoriteDataResponse _$FavoriteDataResponseFromJson(
        Map<String, dynamic> json) =>
    FavoriteDataResponse(
      json['id'] as int?,
      json['name'] as String?,
      json['description'] as String?,
      json['size'] as int?,
      json['color'] as String?,
      json['height'] as int?,
      json['length'] as int?,
      json['weight'] as String?,
      json['width'] as String?,
      json['quantity'] as int?,
      json['store_id'] as int?,
      json['category_id'] as int?,
      json['price'] as int?,
      json['image'] as String?,
      json['discount_id'] as int?,
      json['pivot'] == null
          ? null
          : FavoriteDataResponsePivot.fromJson(
              json['pivot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FavoriteDataResponseToJson(
        FavoriteDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'size': instance.size,
      'color': instance.color,
      'height': instance.height,
      'length': instance.length,
      'weight': instance.weight,
      'width': instance.width,
      'quantity': instance.quantity,
      'store_id': instance.storeId,
      'category_id': instance.categoryId,
      'price': instance.price,
      'image': instance.image,
      'discount_id': instance.discountId,
      'pivot': instance.pivot,
    };

FavoriteDataResponsePivot _$FavoriteDataResponsePivotFromJson(
        Map<String, dynamic> json) =>
    FavoriteDataResponsePivot(
      userId: json['user_id'] as int?,
      storeProductId: json['store_product_id'] as int?,
    );

Map<String, dynamic> _$FavoriteDataResponsePivotToJson(
        FavoriteDataResponsePivot instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'store_product_id': instance.storeProductId,
    };
