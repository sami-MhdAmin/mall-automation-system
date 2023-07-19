import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/core/widgets/custom_button.dart';
import 'package:jessy_mall/core/widgets/custom_counter.dart';
import 'package:jessy_mall/featuers/Favorite/presentation/widgets/favorite_card.dart';
import 'package:jessy_mall/featuers/cart/presentation/widgets/cart_card.dart';

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Text(
                'Favorites',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF303030),
                  fontSize: 16,
                  fontFamily: 'Merriweather',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(Icons.shopping_cart_outlined),
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
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return FavoriteCard();
                  },
                ),
                CustomButton(
                  onPressed: () {},
                  text: "Add all to my cart",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
