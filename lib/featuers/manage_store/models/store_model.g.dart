// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) => StoreModel(
      json['data'] == null
          ? null
          : StoreInfoModel.fromJson(json['data'] as Map<String, dynamic>),
      json['message'] as String?,
    );

Map<String, dynamic> _$StoreModelToJson(StoreModel instance) =>
    <String, dynamic>{
      'data': instance.storeInfoDataModel,
      'message': instance.message,
    };

StoreInfoModel _$StoreInfoModelFromJson(Map<String, dynamic> json) =>
    StoreInfoModel(
      id: json['id'] as int,
      openTime: json['openTime'] as String,
      closeTime: json['closeTime'] as String,
      name: json['name'] as String,
      storeSpace: json['storeSpace'] as int,
      floor: json['floor'] as int,
      type: json['type'] as String,
      image: json['image'] as String,
      warehouseSpace: json['warehouseSpace'] as List<dynamic>,
    );

Map<String, dynamic> _$StoreInfoModelToJson(StoreInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'name': instance.name,
      'storeSpace': instance.storeSpace,
      'floor': instance.floor,
      'type': instance.type,
      'image': instance.image,
      'warehouseSpace': instance.warehouseSpace,
    };
