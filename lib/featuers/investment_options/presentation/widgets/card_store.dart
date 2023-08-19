import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resource/string_manager.dart';
import '../../models/investment_store_model.dart';
import 'package:easy_localization/easy_localization.dart';

class CardStore extends StatelessWidget {
  const CardStore({super.key, required this.listings, required this.index});

  final List<InvestStoreDataModel> listings;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0.r),
              topRight: Radius.circular(30.0.r),
            ),
            child: Image.network(
              'https://image.cnbcfm.com/api/v1/image/103448059-GettyImages-492843021.jpg?v=1675861201&w=740&h=416&ffmt=webp&vtcrop=y',
              height: 600.0.h,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listings[index].type ?? "",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 55.0.sp,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '${StringManager.floor.tr()} ${listings[index].floor}',
                  style: TextStyle(fontSize: 48.0.r),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '${StringManager.storeSpace.tr()} ${listings[index].store_space}',
                  style: TextStyle(fontSize: 48.0.sp),
                ),
                const SizedBox(height: 16.0),
                Text(
                  "${listings[index].price}\$",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 55.0.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
