import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/featuers/home/models/home_model.dart';

import '../../../../config/theme/color_manager.dart';
import '../../../../core/resource/asset_manager.dart';
import '../../../../core/widgets/custom_counter.dart';

class productCardWidget extends StatelessWidget {
  productCardWidget({super.key, this.productModel,required this.index});
  ProductModel? productModel;
  int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: ColorManager.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 3),
          ],
          borderRadius: BorderRadius.vertical(top: Radius.circular(50.r))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Image.network(
                  productModel!.productDataModel?[index].image??'',
                  // scale: 1,
                  fit: BoxFit.fill, height: 600.h,
                  width: 1.sw,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(end: 20.w, bottom: 40.h),
                child: Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                        color: const Color(0x60606066),
                        borderRadius: BorderRadius.circular(30.r),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1)
                        ]),
                    child: Center(
                        child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 50.h,
                    ))),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 25.w),
            child: Text(
              productModel!.productDataModel?[index].name??'',
              style: TextStyle(
                  color: ColorManager.black,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '${productModel!.productDataModel?[index].price}',
                style: TextStyle(
                    color: ColorManager.black,
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700),
              ),
              Counter(
                x: 1,
              ),
            ],
          ),
          const SizedBox()
        ],
      ),
    );
  }
}
