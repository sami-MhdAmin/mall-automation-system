import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager.dart';

class ShippingAddressCard extends StatelessWidget {
  String homeText;
  String addressText;
  ShippingAddressCard({
    Key? key,
    required this.homeText,
    required this.addressText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000.w,
      height: 250.h,
      decoration: BoxDecoration(
        color: ColorManager.backgroundL,
        boxShadow: const [
          BoxShadow(
            color: Color(0x338A959E),
            blurRadius: 40,
            offset: Offset(0, 7),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  homeText,
                  style: TextStyle(
                    color: ColorManager.black,
                    fontSize: 50.sp,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.edit_square),
                  color: ColorManager.black,
                )
              ],
            ),
            Text(
              addressText,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: ColorManager.grey,
                fontSize: 40.sp,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w400,
                height: 1.25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
