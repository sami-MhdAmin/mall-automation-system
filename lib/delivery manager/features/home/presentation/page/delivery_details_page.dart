import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/header_page.dart';
import '../../models/delivery_models.dart';
import '../widgets/confirm_reject_Button.dart';
import '../widgets/delivery_order_details_widget.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            const HeaderPage(
              left: true,
              title: "Order Details",
              // right: IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
            ),
            SizedBox(
              height: 50.h,
            ),
            SizedBox(
              height: 1500.h,
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
                      child: const Row(
                        children: [
                          Text(
                            'To: ',
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 16,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            //TODO: take it from backend,
                            "Salimo",
                            style: TextStyle(
                              color: Color(0xFF232323),
                              fontSize: 16,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          Text(
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
                          return const DeliveryOrderDetailsWidget(
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
                    "Location:",
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
                    "Price:",
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
      ),
    );
  }
}
