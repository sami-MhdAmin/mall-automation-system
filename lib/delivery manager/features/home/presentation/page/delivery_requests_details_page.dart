import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/resource/string_manager.dart';
import '../../../../../core/widgets/header_page.dart';
import '../../models/delivery_models.dart';
import '../widgets/confirm_reject_Button.dart';
import '../widgets/delivery_manager_order_details_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class DeliveryDetailsPage extends StatefulWidget {
  const DeliveryDetailsPage({required this.deliveryOrderDetailId, super.key});

  final int deliveryOrderDetailId;

  @override
  State<DeliveryDetailsPage> createState() => _DeliveryDetailsPageState();
}

class _DeliveryDetailsPageState extends State<DeliveryDetailsPage> {
  List<DeliveryOrderDetailsModel> OrderDetailsList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderPage(
            left: true,
            title: StringManager.orderDetails.tr(),
            // right: IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
          ),
          SizedBox(
            height: 50.h,
          ),
          SizedBox(
            height: 1520.h,
            width: 1000.w,
            child: Card(
              color: Colors.white,
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 30.h,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '${StringManager.to.tr()}: ',
                          style: const TextStyle(
                            color: Color(0xFF808080),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          //TODO: take it from backend,
                          "Salimo",
                          style: TextStyle(
                            color: Color(0xFF232323),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          '20/03/2020',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 16,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 960.w,
                    child: const Divider(
                      color: Color(0xFF999999),
                    ),
                  ),
                  SizedBox(
                    height: 1300.h,
                    width: 900.w,
                    child: ListView.builder(
                      // itemCount: OrderDetailsList.length,
                      itemCount: 8,
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 10.w,
                      ),
                      itemBuilder: (context, index) {
                        return const DeliveryManagerOrderDetailsWidget(
                          imageNetworkSource:
                              "https://media.istockphoto.com/id/912819604/vector/storefront-flat-design-e-commerce-icon.jpg?s=612x612&w=0&k=20&c=_x_QQJKHw_B9Z2HcbA2d1FH1U1JVaErOAp2ywgmmoTI=",
                          productName: "Product X",
                          storeName: "Store name",
                          quantity: "5",
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          SizedBox(
            width: 900.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${StringManager.location.tr()}: ",
                  style: TextStyle(
                    color: const Color(0xFF808080),
                    fontSize: 46.sp,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Damas,rkn Alden,street,7ara".length > 15
                      ? "Damas,rkn Alden,stre..."
                      : "Damas,rkn Alden,street",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: const Color(0xFF232323),
                    fontSize: 38.sp,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 900.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${StringManager.price.tr()}: ",
                  style: TextStyle(
                    color: const Color(0xFF808080),
                    fontSize: 46.sp,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "\$95.00",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: const Color(0xFF232323),
                    fontSize: 38.sp,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80.h,
          ),
          SizedBox(
            width: 980.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConfirmRejectButtonWidget(
                  height: 150.h,
                  width: 480.w,
                  isConfirm: true,
                  onpressed: () {},
                ),
                ConfirmRejectButtonWidget(
                  height: 150.h,
                  width: 480.w,
                  isConfirm: false,
                  onpressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
