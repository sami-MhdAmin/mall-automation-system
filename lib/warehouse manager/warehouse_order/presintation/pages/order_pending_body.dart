import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/widgets/custom_button.dart';

import '../../../../core/widgets/custom_card_movement_widget.dart';
import 'order_details_page.dart';

class OrderPendingBody extends StatelessWidget {
  const OrderPendingBody({super.key});

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
                        customWidget: Padding(
                          padding: EdgeInsetsDirectional.only(
                              start: 30.w, top: 20.h),
                          child: SizedBox(
                            height: 100.h,
                            width: 300.w,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const OrderDetailsPage(
                                            // deliveryOrderDetailId: 2,
                                            ),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorManager.foregroundL,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                              ),
                              child: const Text(
                                "Details",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
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
