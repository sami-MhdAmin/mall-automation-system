import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jessy_mall/featuers/investment_options/presintation/widgets/slider_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InvestStoreUiBody extends StatelessWidget {
  const InvestStoreUiBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //slider image with animation
        SliderImage(),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Clothes Type, Good Vipe',
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
              Text(
                'Product Details',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 20,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  // height: 24,
                  letterSpacing: 0.38,
                ),
              ),
              Row(
                children: [
                  Opacity(
                    opacity: 0.50,
                    child: Text(
                      'Room Type \nColor\nMaterial \nDimensions \nWeight',
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
                    'Office, Living Room\nYellow\nTextile, Velvet, Cotton\n25.6 x 31.5 x 37.4 inches\n20.3 Pounds',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 15,
                      fontFamily: 'SF Compact Display',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        //Text for store type with bold font
      ],
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

