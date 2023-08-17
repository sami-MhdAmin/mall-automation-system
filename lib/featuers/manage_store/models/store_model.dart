

import 'package:json_annotation/json_annotation.dart';

part 'store_model.g.dart';

@JsonSerializable()
class StoreModel{
   @JsonKey(name: 'data')
   StoreInfoModel? storeInfoDataModel ;
   String? message;
   StoreModel (
    this.storeInfoDataModel,
    this.message
   );
     factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoreModelToJson(this);


}


@JsonSerializable()
class StoreInfoModel {
  final int id;
  final String openTime;
  final String closeTime;
  final String name;
  final int storeSpace;
  final int floor;
  final String type;
  final String image;
  final List<dynamic> warehouseSpace;

  StoreInfoModel({
    required this.id,
    required this.openTime,
    required this.closeTime,
    required this.name,
    required this.storeSpace,
    required this.floor,
    required this.type,
    required this.image,
    required this.warehouseSpace,
  });

  factory StoreInfoModel.fromJson(Map<String, dynamic> json) => _$StoreInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoreInfoModelToJson(this);
}
