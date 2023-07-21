import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/resource/asset_manager.dart';

import '../widget/details_for_clothes_product_widget.dart';
import '../widget/details_for_furniture_product_widget.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key,required this.isClothes});
  final bool isClothes;

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
                        child: Image.asset(
                          AssetImageManager.market,
                          fit: BoxFit.cover,
                        )),
                    Positioned(
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
                            '33% off',
                            style:
                                TextStyle(color: Colors.white, fontSize: 40.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 70.w),
                child: Text(
                  'Almond Toe',
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
                  child: widget.isClothes==true? DetailForClothesProductWidget() :DetailForFurnitureProduct(),
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
                    Text(
                      'SYR 220000',
                      style: TextStyle(
                          color: ColorManager.grey,
                          fontSize: 45.sp,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.lineThrough,
                          decorationColor: ColorManager.grey),
                    ),
                    Text(
                      'SYR 220000',
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
                    Text('product Description',
                        style: TextStyle(
                            color: ColorManager.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 50.sp)),
                    Text('this product is made by syrian hand.',
                        style: TextStyle(
                            color: ColorManager.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 40.sp)),
                    SizedBox(
                      height: 50.h,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Container(
                          width: 700.w,
                          height: 150.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.r),
                              color: ColorManager.black),
                          child: Center(
                            child: Text(
                              'Add To Card',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    )
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
