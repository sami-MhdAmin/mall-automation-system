import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager.dart';

class CustomListTileWidget extends StatelessWidget {
  const CustomListTileWidget({
    required this.imageNetworkSource,
    required this.storeName,
    required this.openAndCloseTime,
    required this.subCategoryList,
    super.key,
  });

  final String imageNetworkSource;
  final String storeName;
  final String openAndCloseTime;
  final List<String> subCategoryList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.w, bottom: 20.h, top: 20.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image.network(
              imageNetworkSource,
              scale: 1,
              height: 200.w,
              width: 200.w,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          SizedBox(
            height: 200.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  storeName,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorManager.foregroundL,
                    fontWeight: FontWeight.bold,
                    fontSize: 32.sp,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  openAndCloseTime,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorManager.grey,
                    fontSize: 26.sp,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  children: [
                    for (int i = 0; i < subCategoryList.length; i++)
                      Padding(
                        padding: EdgeInsets.only(right: 30.w),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: ColorManager.foregroundL,
                          ),
                          width: 60.w,
                          height: 60.w,
                          child: Center(
                            child: Text(
                              subCategoryList[i],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
