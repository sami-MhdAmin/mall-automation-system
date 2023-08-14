import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';

import 'package:jessy_mall/core/widgets/custom_button.dart';
import 'package:jessy_mall/core/widgets/custom_counter.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:jessy_mall/featuers/Favorite/presentation/widgets/favorite_card.dart';
import 'package:jessy_mall/featuers/cart/presentation/widgets/cart_card.dart';
import 'package:easy_localization/easy_localization.dart';

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          HeaderPage(
            left: false,
            title: StringManager.favorite.tr(),
          ),
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(width: 1000.w, child: const FavoriteCard()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.w),
                          child: const Divider(),
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
