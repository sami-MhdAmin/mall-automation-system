import 'package:json_annotation/json_annotation.dart';

part 'investor_model.g.dart';




@JsonSerializable()
class InvestorProductModel {
  final List<InvestorDataProductModel>? data ;
  final String ?message;
  

  InvestorProductModel({
    required this.data,
    required this.message,

  });

  factory InvestorProductModel.fromJson(Map<String, dynamic> json) => _$InvestorProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$InvestorProductModelToJson(this);
}


@JsonSerializable()
class InvestorDataProductModel {
  final int? id;
  final int ?quantity;
  // final int? size;
  // final String? color;
  // final String? width;
  // final String? weight;
  // final int ?height;
  final String? name;
  final String? description;
  final String? category;
  final int ?storeId;
  final int ?price;
  final String? image;

  InvestorDataProductModel({
     this.id,
     this.quantity,
  
     this.name,
     this.description,
     this.category,
     this.storeId,
     this.price,
     this.image,
  });

  factory InvestorDataProductModel.fromJson(Map<String, dynamic> json) => _$InvestorDataProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$InvestorDataProductModelToJson(this);
}
