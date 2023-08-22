import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/resource/asset_manager.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';
import 'package:jessy_mall/core/widgets/custom_button.dart';
import 'package:jessy_mall/featuers/home/models/home_model.dart';

import '../../../../core/resource/const_manager.dart';
import '../widget/details_for_clothes_product_widget.dart';
import '../widget/details_for_furniture_product_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class ProductDetailsPage extends StatefulWidget {
  ProductDetailsPage(
      {super.key,
      required this.categoryName,
      this.productModel,
      required this.index});
  final String categoryName;
  ProductModel? productModel;
  final int index;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 1.sh,
          width: 1.sw,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(120.r)),
                child: Stack(
                  children: [
                    SizedBox(
                        height: 900.h,
                        width: 1.sw,
                        child: Image.network(
                          widget.productModel!.productDataModel?[widget.index]
                                  .image ??
                              '',
                          fit: BoxFit.cover,
                        )),
                    widget.productModel!.productDataModel?[widget.index]
                                .discountPercent ==
                            null
                        ? const SizedBox.shrink()
                        : Positioned(
                            top: 400.h,
                            child: Container(
                              width: 240.w,
                              height: 90.h,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 2,
                                        spreadRadius: 2)
                                  ]),
                              child: Center(
                                child: Text(
                                  '${widget.productModel!.productDataModel?[widget.index].discountPercent} ${StringManager.off.tr()}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 40.sp),
                                ),
                              ),
                            ),
                          ),
                  ],
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 70.w),
                child: Text(
                  widget.productModel!.productDataModel?[widget.index].name ??
                      '',
                  style: TextStyle(
                      color: ColorManager.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 50.sp),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              SizedBox(
                height: 500.h,
                width: 1.sh,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 140.w),
                  child: widget.categoryName == ConstManager.clothesCategory
                      ? DetailForClothesProductWidget(
                          productModel: widget.productModel,
                          indexProduct: widget.index,
                        )
                      : DetailForFurnitureProduct(
                          productModel: widget.productModel,
                          indexProduct: widget.index,
                        ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 40.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //discount
                    Text(
                      '${widget.productModel!.productDataModel?[widget.index].price}',
                      style: TextStyle(
                          color: ColorManager.grey,
                          fontSize: 45.sp,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: ColorManager.grey),
                    ),
                    widget.productModel!.productDataModel?[widget.index]
                                .discountPercent ==
                            null
                        ? const SizedBox.shrink()
                        : Text(
                            '${widget.productModel!.productDataModel?[widget.index].priceAfterDiscount}',
                            style: TextStyle(
                              color: ColorManager.red,
                              fontSize: 45.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                  ],
                ),
              ),
              Divider(
                thickness: 2.h,
                color: ColorManager.grey,
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 40.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(StringManager.productDescription.tr(),
                        style: TextStyle(
                            color: ColorManager.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 50.sp)),
                    SingleChildScrollView(
                      child: SizedBox(
                        height: 300.h,
                        width: 1.sw,
                        child: Text(
                            '${widget.productModel!.productDataModel?[widget.index].description}',
                            style: TextStyle(
                                color: ColorManager.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 40.sp)),
                      ),
                    ),

                    // Center(
                    //   child: CustomButton(
                    //     onPressed: () {},
                    //     text: StringManager.addToCard.tr(),
                    //   ),
                    // )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
