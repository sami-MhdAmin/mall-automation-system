import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/warehouse%20manager/warehouse_home/presintation/pages/warehouse_product_movement.dart';

import '../../../../config/theme/color_manager.dart';
import '../../../../core/resource/asset_manager.dart';
import '../../../../featuers/home/presintation/widget/product_card_widget.dart';

class WarehouseProductBody extends StatelessWidget {
  const WarehouseProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              shrinkWrap: true,
              padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 50.w, vertical: 30.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 40.h,
                  mainAxisSpacing: 50.h,
                  // mainAxisExtent: 100.h,
                  childAspectRatio: 1.3.h / 2.w,
                  crossAxisCount: 2),
              itemCount: 20,
              itemBuilder: (context, index) {
                return ProductCardInWarehouse();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCardInWarehouse extends StatelessWidget {
  const ProductCardInWarehouse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WareHouseProductMovementPage(),
          ),
        );
      },
      child: Container(
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
            ClipRRect(
              borderRadius: BorderRadius.circular(50.r),
              child: Image.asset(
                AssetImageManager.market,
                height: 600.h,
                width: 1.sw,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 25.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    //TODO: didnt translate this
                    'Minimal Stand',
                    style: TextStyle(
                        color: ColorManager.black,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'store name',
                    style: TextStyle(
                        color: ColorManager.black,
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox()
          ],
        ),
      ),
    );
  }
}
