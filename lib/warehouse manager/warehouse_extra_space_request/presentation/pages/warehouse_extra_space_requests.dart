import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:easy_localization/easy_localization.dart';

import '../widgets/extra_space_card_widget.dart';

class WarehouseExtraSpaceRequests extends StatefulWidget {
  const WarehouseExtraSpaceRequests({super.key});

  @override
  State<WarehouseExtraSpaceRequests> createState() =>
      _WarehouseExtraSpaceRequestsState();
}

class _WarehouseExtraSpaceRequestsState
    extends State<WarehouseExtraSpaceRequests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderPage(
            title: StringManager.extraSpaceRequest.tr(),
            left: true,
          ),
          SizedBox(
            height: 1500.h,
            child: ListView.builder(
                // itemCount: deliveryRequestsList.length,
                itemCount: 8,
                padding: EdgeInsets.symmetric(
                  vertical: 50.h,
                  horizontal: 30.w,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 30.h),
                    child: const WarehouseExtraSpaceCardWidget(
                      userNameText: "w",
                      dateText: "20/03/2023",
                      priceText: "50",
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
