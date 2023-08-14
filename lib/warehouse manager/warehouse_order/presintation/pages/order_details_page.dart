import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resource/string_manager.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_card_movement_widget.dart';
import '../../../../core/widgets/header_page.dart';
import 'package:easy_localization/easy_localization.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderPage(
            title: StringManager.orderDetails.tr(),
            left: true,
          ),
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                ListView.builder(
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        CustomCardMovementWidget(
                          height: 300.h,
                          firstTextField: "Product X",
                          secondTextField: StringManager.income.tr(),
                          quantityTextField: "04",
                        ),
                        SizedBox(
                          height: 30.h,
                        )
                      ],
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 80.h),
                  child: CustomButton(
                    onPressed: () {},
                    text: StringManager.confirm.tr(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
