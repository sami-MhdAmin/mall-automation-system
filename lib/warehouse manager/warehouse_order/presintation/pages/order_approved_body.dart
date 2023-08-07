import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/widgets/custom_button.dart';

import '../../../../core/widgets/custom_card_movement_widget.dart';

class OrderApprovedBody extends StatelessWidget {
  const OrderApprovedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      CustomCardMovementWidget(
                        height: 500.h,
                        firstTextField: "Order from: Adidas",
                        secondTextField: "22/12/2023",
                        quantityTextField: "04",
                        customWidget: Container(
                          height: 150.h,
                          width: 300.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.r),
                              bottomRight: Radius.circular(20.r),
                            ),
                            color: ColorManager.black,
                          ),
                          child: Center(
                            child: Text(
                              "Details",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40.sp,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                              ),
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
