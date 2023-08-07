import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      width: 20.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 80.w),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0.r),
                child: Container(
                  height: 250.h,
                  width: 250.w,
                  color: Colors.black,
                )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Minimal Stand',
                style: TextStyle(
                  color: ColorManager.grey,
                  fontSize: 40.sp,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '\$ 25.00',
                style: TextStyle(
                  color: ColorManager.black,
                  fontSize: 45.sp,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              const Icon(Icons.highlight_remove_outlined),
              // Expanded(child: SizedBox()),
              // Icon(Icons.shopping_bag),
              SizedBox(
                height: 100.h,
              ),
              const Icon(Icons.shopify),
            ],
          )
        ],
      ),
    );
  }
}
