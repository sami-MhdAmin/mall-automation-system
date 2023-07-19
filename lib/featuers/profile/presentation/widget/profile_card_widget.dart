import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget(
      {required this.titleInListTile,
      required this.subtitleInListTile,
      required this.navigatorFunc,
      super.key});

  final String titleInListTile, subtitleInListTile;
  final void Function()? navigatorFunc;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 950.w,
      height: 350.h,
      child: InkWell(
        onTap: navigatorFunc,
        child: Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListTile(
                    title: Text(
                      titleInListTile,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorManager.foregroundL,
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // titleAlignment: ,
                    subtitle: Text(
                      subtitleInListTile,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: ColorManager.grey,
                        fontSize: 26.sp,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: navigatorFunc,
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: ColorManager.foregroundL,
                    size: 50.w,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
