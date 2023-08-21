// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wearhouse_investor_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WearhouseInvestorProductModel _$WearhouseInvestorProductModelFromJson(
        Map<String, dynamic> json) =>
    WearhouseInvestorProductModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => WearhouseInvestorProductDataModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$WearhouseInvestorProductModelToJson(
        WearhouseInvestorProductModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

WearhouseInvestorProductDataModel _$WearhouseInvestorProductDataModelFromJson(
        Map<String, dynamic> json) =>
    WearhouseInvestorProductDataModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      quantity: json['quantity'] as int?,
      store: json['store'] == null
          ? null
          : StoreForWearhouseInvestorProduct.fromJson(
              json['store'] as Map<String, dynamic>),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$WearhouseInvestorProductDataModelToJson(
        WearhouseInvestorProductDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'quantity': instance.quantity,
      'store': instance.store,
      'image': instance.image,
    };

StoreForWearhouseInvestorProduct _$StoreForWearhouseInvestorProductFromJson(
        Map<String, dynamic> json) =>
    StoreForWearhouseInvestorProduct(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$StoreForWearhouseInvestorProductToJson(
        StoreForWearhouseInvestorProduct instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
