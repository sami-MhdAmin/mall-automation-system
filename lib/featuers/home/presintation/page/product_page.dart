import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/core/resource/asset_manager.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';
import 'package:jessy_mall/core/widgets/custom_counter.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:jessy_mall/featuers/home/presintation/page/product_details_page.dart';

import '../../../../config/theme/color_manager.dart';
import '../../../../core/resource/const_manager.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../widget/product_card_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.categoryName});
  final String categoryName;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,
        width: 1.sw,
        color: Colors.white,
        child: Column(
          children: [
            HeaderPage(title: StringManager.products.tr(), left: true),
            SizedBox(
              height: 100.h,
            ),
            CustomTextField(
              keybordType: TextInputType.name,
              width: 850.w,
              hintText: StringManager.search.tr(),
              icon: Icons.search,
              textEditingController: searchController,
              validator: (v) {
                return null;
              },
              textFieldColor: ColorManager.grey.withOpacity(0.5),
            ),
            SizedBox(
              height: 40.h,
            ),
            SizedBox(
              height: 250.h,
              width: 1.sw,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsetsDirectional.only(start: 40.w),
                        child: Column(
                          children: [
                            Container(
                              width: 120.w,
                              height: 120.h,
                              decoration: BoxDecoration(
                                  color: const Color(0xffF5F5F5),
                                  borderRadius: BorderRadius.circular(30.r),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 1)
                                  ]),
                              child: const Center(
                                  child: Icon(
                                Icons.chair,
                                color: Color(0x99909090),
                              )),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'data',
                              style: TextStyle(
                                  color: ColorManager.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 40.sp),
                            ),
                          ],
                        ));
                  }),
            ),
            SizedBox(
              height: 40.h,
            ),
            Expanded(
              child: GridView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 50.w, vertical: 30.h),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 40.h,
                      mainAxisSpacing: 50.h,
                      // mainAxisExtent: 100.h,
                      childAspectRatio: 1.3.h / 2.w,
                      crossAxisCount: 2),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          if (widget.categoryName ==
                                  ConstManager.clothesCategory ||
                              widget.categoryName ==
                                  ConstManager.furnitureCategory) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductDetailsPage(
                                          categoryName: widget.categoryName,
                                        )));
                          }
                        },
                        child: const productCardWidget());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
