import 'package:json_annotation/json_annotation.dart';

// import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';

@JsonSerializable()

class ProfileModel{
  @JsonKey(name: 'data')
   ProfileDataModel? profileDataModel ;
   String? message;
   ProfileModel (
    this.profileDataModel,
    this.message
   );
     factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);

}
@JsonSerializable()

class ProfileDataModel {
  final String? name;
  final String? email;
  final String? phone;
  final String? image;
  final String? role;
  final List<dynamic>? orders;
  final int? store;
  final int? stand;

  ProfileDataModel({
    this.name,
    this.email,
    this.phone,
    this.image,
    this.role,
    this.orders,
    this.store,
    this.stand,
  });

  factory ProfileDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileDataModelToJson(this);
}

class ProfileOrdersModel {}
