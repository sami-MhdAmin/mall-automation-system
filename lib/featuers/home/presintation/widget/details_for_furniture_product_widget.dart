import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager.dart';

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
              'Material: ',
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
              'color: ',
              style: TextStyle(
                  color: ColorManager.grey,
                  fontWeight: FontWeight.w500,
                  fontSize: 50.sp),
            ),
            Text(
              'color: black',
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
              'Dimensions: ',
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
              'weight: ',
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
