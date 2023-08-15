import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/core/widgets/custom_button.dart';
import 'package:jessy_mall/featuers/investment_options/presentation/widgets/slider_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'check_paypal.dart';

class InvestStorePage extends StatelessWidget {
  const InvestStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //slider image with animation
          SliderImage(),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Type  Clothes ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    // height: 28,
                    letterSpacing: 0.35,
                  ),
                ),
                //price
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: 51,
                  child: Text(
                    '\$230',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF007AFF),
                      fontSize: 20,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                      // height: 24,
                      letterSpacing: 0.38,
                    ),
                  ),
                ),
                //product details widget
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  'Store Details',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 20,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    // height: 24,
                    letterSpacing: 0.38,
                  ),
                ),

                SizedBox(
                  height: 8.h,
                ),

                Row(
                  children: [
                    Opacity(
                      opacity: 0.50,
                      child: Text(
                        'Store Theme\nCategories \nDimensions \nRoom Count ',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 15,
                          fontFamily: 'SF Compact Display',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Yellow\nchair, ...\n25.6 x 31.5 x 37.4 inches\n 2',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 15,
                        fontFamily: 'SF Compact Display',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Text for store type with bold font
          Expanded(child: SizedBox()),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => CheckoutPage(
                                id: "1",
                              )));
                },
                text: "Invest"),
          ),
        ],
      ),
    );
  }
}
/**
 * floor
 * dimentions
 * office ?
 * chacher ?
 * rooms
 * 
 */
/***************************** */

