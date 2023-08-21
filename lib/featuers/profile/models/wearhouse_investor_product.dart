import 'package:json_annotation/json_annotation.dart';

part 'wearhouse_investor_product.g.dart'; // This is the generated file from the build_runner

@JsonSerializable()
class WearhouseInvestorProductModel {
  final List<WearhouseInvestorProductDataModel> ?data;
  final String ?message;
  WearhouseInvestorProductModel({ this.data,this.message});

  factory WearhouseInvestorProductModel.fromJson(Map<String, dynamic> json) =>
      _$WearhouseInvestorProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$WearhouseInvestorProductModelToJson(this);
}

@JsonSerializable()
class WearhouseInvestorProductDataModel {
  final int? id;
  final String ?name;
  final String ?description;
  final int? quantity;
  final StoreForWearhouseInvestorProduct ?store;
  final String ?image;

  WearhouseInvestorProductDataModel({
     this.id,
     this.name,
     this.description,
     this.quantity,
     this.store,
     this.image,
  });

  factory WearhouseInvestorProductDataModel.fromJson(
          Map<String, dynamic> json) =>
      _$WearhouseInvestorProductDataModelFromJson(json);
  Map<String, dynamic> toJson() =>
      _$WearhouseInvestorProductDataModelToJson(this);
}

@JsonSerializable()
class StoreForWearhouseInvestorProduct {
  final String ?name;

  StoreForWearhouseInvestorProduct({ this.name});

  factory StoreForWearhouseInvestorProduct.fromJson(
          Map<String, dynamic> json) =>
      _$StoreForWearhouseInvestorProductFromJson(json);
  Map<String, dynamic> toJson() =>
      _$StoreForWearhouseInvestorProductToJson(this);
}
