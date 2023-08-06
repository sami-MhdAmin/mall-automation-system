import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager.dart';
import '../../../../../core/widgets/custom_card_movement_widget.dart';
import '../../models/delivery_models.dart';
import 'delivery_details_page.dart';

class DeliveryRequestBodyPage extends StatefulWidget {
  const DeliveryRequestBodyPage({super.key});

  @override
  State<DeliveryRequestBodyPage> createState() =>
      _DeliveryRequestBodyPageState();
}

class _DeliveryRequestBodyPageState extends State<DeliveryRequestBodyPage> {
  List<DeliveryRequestsModel> deliveryRequestsList = [];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            child: CustomCardMovementWidget(
              //TODO: take all of info from model like that: deliveryRequestsList[index].x
              height: 400.h,
              firstTextField: "Salimo",
              secondTextField: "20/03/2020",
              quantityTextField: "03",
              fourthTextField: "150",
              customWidget: Padding(
                padding: EdgeInsetsDirectional.only(start: 30.w, top: 20.h),
                child: SizedBox(
                  height: 100.h,
                  width: 300.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DeliveryDetailsPage(
                            deliveryOrderDetailId: 2,
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
          );
        },
      ),
    );
  }
}
