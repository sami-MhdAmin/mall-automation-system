import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/core/widgets/custom_button.dart';
import 'package:jessy_mall/core/widgets/custom_counter.dart';
import 'package:jessy_mall/featuers/cart/presentation/widgets/cart_card.dart';

class MyCartBody extends StatelessWidget {
  const MyCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios_rounded),
              Text(
                'My cart',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF303030),
                  fontSize: 16,
                  fontFamily: 'Merriweather',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox()
            ],
          ),
          SizedBox(
            height: 80.h,
          ),
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return CartCard();
                  },
                ),
                Container(
                  height: 250.h,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total:',
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 20,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '\$ 95.00',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 20,
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
