import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theme/color_manager.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> gShowErrorSnackBar(
    {required BuildContext context, required String message}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          Icon(
            Icons.error,
            color: Colors.white,
            size: 100.r,
          ),
          SizedBox(width: 50.w),
          SizedBox(
            width: 1.sw - 500.w,
            child: Text(
              message,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 34.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.red.shade700,
      duration: const Duration(seconds: 3),
    ),
  );
}

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> gShowSuccessSnackBar(
    {required BuildContext context, required String message}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      padding: EdgeInsets.only(bottom: 30.h),
      content: Row(
        textDirection: TextDirection.rtl,
        children: [
          Icon(
            Icons.done,
            color: Colors.white,
            size: 40.h,
          ),
          SizedBox(width: 8.w),
          SizedBox(
            width: 1.sw - 100.w,
            child: Text(
              message,
              // textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.lightGreenAccent.shade700,
      duration: const Duration(seconds: 3),
    ),
  );
}
