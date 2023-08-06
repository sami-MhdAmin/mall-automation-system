
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager.dart';
import '../../../../core/resource/asset_manager.dart';
import '../../../../core/widgets/custom_counter.dart';

class productCardWidget extends StatelessWidget {
  const productCardWidget({
    super.key,
  });

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
                child: Image.asset(
                  AssetImageManager.market,
                  height: 600.h,
                  width: 1.sw,
                  fit: BoxFit.fill,
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
              'Minimal Stand',
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
                '24.00',
                style: TextStyle(
                    color: ColorManager.black,
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700),
              ),
              const Counter(),
            ],
          ),
          const SizedBox()
        ],
      ),
    );
  }
}
