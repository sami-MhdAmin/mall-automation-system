import 'package:json_annotation/json_annotation.dart';

// import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()
class ProfileModel {
  final String? name;
  final String? email;
  final String? phone;
  final String? image;
  final String? role;
  final List<dynamic>? orders;
  final int? store;
  final int? stand;

  ProfileModel({
    this.name,
    this.email,
    this.phone,
    this.image,
    this.role,
    this.orders,
    this.store,
    this.stand,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}

class ProfileOrdersModel {}
