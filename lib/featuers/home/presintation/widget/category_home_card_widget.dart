
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager.dart';

class CategoryHomeCardWidget extends StatelessWidget {
  const CategoryHomeCardWidget(
      {super.key, required this.categryName, required this.imgUrl});
  final String categryName;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.r)),
        color: ColorManager.black,
      ),
      height: 650.h,
      width: 450.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            color: Colors.white,
            height: 300.h,
            width: 450.w,
            child: Image.asset(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(end: 50.w),
            child: Text(
              categryName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w900),
            ),
          )
        ],
      ),
    );
  }
}
