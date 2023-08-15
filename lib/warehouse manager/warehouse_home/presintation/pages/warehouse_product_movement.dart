import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:jessy_mall/core/widgets/header_page.dart';

import '../../../../core/resource/string_manager.dart';
import '../../../../core/widgets/custom_card_movement_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class WareHouseProductMovementPage extends StatelessWidget {
  const WareHouseProductMovementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderPage(
            title: StringManager.productMovement.tr(),
            left: true,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      CustomCardMovementWidget(
                        height: 350.h,
                        firstTextField: "Sami",
                        secondTextField: "income",
                        quantityTextField: "04",
                        fourthTextField: "22/12/2023",
                        customWidget: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: const Text(
                            'Storename',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF232323),
                              fontSize: 16,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
