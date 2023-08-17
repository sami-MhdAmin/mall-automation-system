// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      json['data'] == null
          ? null
          : ProfileDataModel.fromJson(json['data'] as Map<String, dynamic>),
      json['message'] as String?,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'data': instance.profileDataModel,
      'message': instance.message,
    };

ProfileDataModel _$ProfileDataModelFromJson(Map<String, dynamic> json) =>
    ProfileDataModel(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      role: json['role'] as String?,
      orders: json['orders'] as List<dynamic>?,
      store: json['store'] as int?,
      stand: json['stand'] as int?,
    );

Map<String, dynamic> _$ProfileDataModelToJson(ProfileDataModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
      'role': instance.role,
      'orders': instance.orders,
      'store': instance.store,
      'stand': instance.stand,
    };
