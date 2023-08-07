import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_card_movement_widget.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

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
                        height: 350.h,
                        firstTextField: "product X",
                        secondTextField: "22/12/2023",
                        quantityTextField: "04",
                        fourthTextField: "Store Name",
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
