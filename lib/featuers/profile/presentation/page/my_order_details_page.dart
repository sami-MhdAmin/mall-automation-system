import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resource/string_manager.dart';
import '../../../../core/widgets/header_page.dart';
import 'package:easy_localization/easy_localization.dart';

import '../widget/order_details_widget.dart';

class MyOrderDetailsPage extends StatefulWidget {
  const MyOrderDetailsPage({super.key});

  @override
  State<MyOrderDetailsPage> createState() => _MyOrderDetailsPageState();
}

class _MyOrderDetailsPageState extends State<MyOrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderPage(
            left: true,
            title: StringManager.orderDetails.tr(),
          ),
          SizedBox(
            height: 2000.h,
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
                    child: const Text(
                      '20/03/2020',
                      style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 16,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 960.w,
                    child: const Divider(
                      color: Color(0xFF999999),
                    ),
                  ),
                  SizedBox(
                    height: 1750.h,
                    width: 900.w,
                    child: ListView.builder(
                      // itemCount: OrderDetailsList.length,
                      itemCount: 8,
                      padding: EdgeInsets.symmetric(
                        vertical: 10.h,
                        horizontal: 10.w,
                      ),
                      itemBuilder: (context, index) {
                        return const OrderDetailsWidget(
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
        ],
      ),
    );
  }
}
