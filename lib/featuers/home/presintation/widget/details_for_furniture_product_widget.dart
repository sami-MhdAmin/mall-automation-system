import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';

import '../../../../config/theme/color_manager.dart';
import 'package:easy_localization/easy_localization.dart';

class DetailForFurnitureProduct extends StatelessWidget {
  const DetailForFurnitureProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '${StringManager.materials.tr()} : ',
              style: TextStyle(
                  color: ColorManager.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 50.sp),
            ),
            Text(
              'bla,bla,bla',
              style: TextStyle(
                  color: ColorManager.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 50.sp),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '${StringManager.color.tr()} : ',
              style: TextStyle(
                  color: ColorManager.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 50.sp),
            ),
            Text(
              'black',
              style: TextStyle(
                  color: ColorManager.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 50.sp),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '${StringManager.dimensions.tr()} : ',
              style: TextStyle(
                  color: ColorManager.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 50.sp),
            ),
            Text(
              '25*31*44 inches',
              style: TextStyle(
                  color: ColorManager.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 50.sp),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              '${StringManager.weight.tr()} : ',
              style: TextStyle(
                  color: ColorManager.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 50.sp),
            ),
            Text(
              '25 pounds',
              style: TextStyle(
                  color: ColorManager.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 50.sp),
            ),
          ],
        ),
      ],
    );
  }
}
