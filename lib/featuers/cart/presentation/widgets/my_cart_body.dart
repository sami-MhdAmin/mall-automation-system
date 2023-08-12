import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/widgets/custom_button.dart';
import 'package:jessy_mall/core/widgets/custom_counter.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:jessy_mall/featuers/cart/presentation/widgets/cart_card.dart';
import 'package:jessy_mall/featuers/cart/presentation/widgets/shipping_address_card.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderPage(left: false, title: 'My cart'),
          SizedBox(
            height: 80.h,
          ),
          Text(
            'shipping address',
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 45.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
          ShippingAddressCard(homeText: "Home", addressText: "place, street"),
          SizedBox(
            height: 100.h,
          ),
          Text(
            'order list',
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 45.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
          Flexible(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return CartCard(
                      price: "\$ 25.0",
                      delete: true,
                    );
                  },
                ),
                Container(
                  height: 250.h,
                  color: ColorManager.backgroundL,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total:',
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 55.sp,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '\$ 95.00',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 55.sp,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      CustomButton(
                        onPressed: () {},
                        text: "Confirm",
                      ),
                    ],
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
