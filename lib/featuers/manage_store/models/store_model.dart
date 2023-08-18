import 'package:json_annotation/json_annotation.dart';

part 'store_model.g.dart';

@JsonSerializable()
class StoreModel {
  @JsonKey(name: 'data')
  StoreInfoModel? storeInfoDataModel;
  String? message;
  StoreModel(this.storeInfoDataModel, this.message);
  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoreModelToJson(this);
}

@JsonSerializable()
class StoreInfoModel {
  final int? id;
  final String? openTime;
  final String? closeTime;
  final String? name;
  final int? store_space;
  final int? floor;
  final String? type;
  final String? image;
  final List<dynamic>? warehouse_space;

  StoreInfoModel({
    this.id,
    this.openTime,
    this.closeTime,
    this.name,
    this.store_space,
    this.floor,
    this.type,
    this.image,
    this.warehouse_space,
  });

  factory StoreInfoModel.fromJson(Map<String, dynamic> json) =>
      _$StoreInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoreInfoModelToJson(this);

//   StoreInfoModel copyWith({
//     int? id,
//     String? openTime,
//     String? closeTime,
//     String? name,
//     int? storeSpace,
//     int? floor,
//     String? type,
//     String? image,
//     List<dynamic>? warehouseSpace,
//   }) {
//     return StoreInfoModel(
//       id: id ?? this.id,
//       openTime: openTime ?? this.openTime,
//       closeTime: closeTime ?? this.closeTime,
//       name: name ?? this.name,
//       storeSpace: storeSpace ?? this.storeSpace,
//       floor: floor ?? this.floor,
//       type: type ?? this.type,
//       image: image ?? this.image,
//       warehouseSpace: warehouseSpace ?? this.warehouseSpace,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'openTime': openTime,
//       'closeTime': closeTime,
//       'name': name,
//       'storeSpace': storeSpace,
//       'floor': floor,
//       'type': type,
//       'image': image,
//       'warehouseSpace': warehouseSpace,
//     };
//   }

//   factory StoreInfoModel.fromMap(Map<String, dynamic> map) {
//     return StoreInfoModel(
//       id: map['id']?.toInt(),
//       openTime: map['openTime'],
//       closeTime: map['closeTime'],
//       name: map['name'],
//       storeSpace: map['storeSpace']?.toInt() ?? 0,
//       floor: map['floor']?.toInt() ?? 0,
//       type: map['type'] ?? '',
//       image: map['image'] ?? '',
//       warehouseSpace: List<dynamic>.from(map['warehouseSpace']),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory StoreInfoModel.fromJson(String source) =>
//       StoreInfoModel.fromMap(json.decode(source));

//   @override
//   String toString() {
//     return 'StoreInfoModel(id: $id, openTime: $openTime, closeTime: $closeTime, name: $name, storeSpace: $storeSpace, floor: $floor, type: $type, image: $image, warehouseSpace: $warehouseSpace)';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is StoreInfoModel &&
//         other.id == id &&
//         other.openTime == openTime &&
//         other.closeTime == closeTime &&
//         other.name == name &&
//         other.storeSpace == storeSpace &&
//         other.floor == floor &&
//         other.type == type &&
//         other.image == image &&
//         listEquals(other.warehouseSpace, warehouseSpace);
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         openTime.hashCode ^
//         closeTime.hashCode ^
//         name.hashCode ^
//         storeSpace.hashCode ^
//         floor.hashCode ^
//         type.hashCode ^
//         image.hashCode ^
//         warehouseSpace.hashCode;
//   }
}
