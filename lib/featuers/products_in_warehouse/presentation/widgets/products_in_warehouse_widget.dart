import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager.dart';

class ProductsInWarehouseWidget extends StatelessWidget {
  const ProductsInWarehouseWidget({
    required this.imageNetworkSource,
    required this.productName,
    required this.price,
    super.key,
  });

  final String imageNetworkSource;
  final String productName;
  final String price;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270.h,
      width: 950.w,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: SizedBox(
                height: 250.h,
                width: 250.h,
                child: Image.network(
                  imageNetworkSource,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              width: 40.w,
            ),
            Text(
              productName,
              // textAlign: TextAlign.start,
              style: TextStyle(
                color: const Color(0xFF808080),
                fontSize: 38.sp,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 100.h,
              // TODO:must implement and put alert dialog
              child: IconButton(
                onPressed: () {
                  print("Alert Dialog");
                },
                icon: Icon(
                  Icons.highlight_remove_outlined,
                  size: 60.r,
                  color: ColorManager.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
