import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theme/color_manager.dart';
import '../../../../../core/resource/string_manager.dart';
import '../../../../../core/widgets/custom_card_movement_widget.dart';
import '../../models/delivery_models.dart';
import 'delivery_requests_details_page.dart';
import 'package:easy_localization/easy_localization.dart';

import 'delivery_history_details_page.dart';

class DeliveryHistoryBodyPage extends StatefulWidget {
  const DeliveryHistoryBodyPage({super.key});

  @override
  State<DeliveryHistoryBodyPage> createState() =>
      _DeliveryHistoryBodyPageState();
}

class _DeliveryHistoryBodyPageState extends State<DeliveryHistoryBodyPage> {
  List<DeliveryHistoryModel> deliveryRequestsList = [];
  bool isDelivered = true;
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
              fourthTextField: "${StringManager.totalAmount.tr()}: 150",
              customWidget: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 30.w, top: 20.h),
                    child: SizedBox(
                      height: 100.h,
                      width: 300.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HistoryDetailsPage(
                              
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
                        child: Text(
                          StringManager.details.tr(),
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(end: 30.w, top: 20.h),
                    child: Text(
                      //TODO: take it from backend
                      isDelivered
                          ? StringManager.delivered.tr()
                          : StringManager.failed.tr(),
                      style: TextStyle(
                        color:
                            isDelivered ? ColorManager.green : ColorManager.red,
                        fontSize: 38.sp,
                        fontFamily: 'Nunito Sans',
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
