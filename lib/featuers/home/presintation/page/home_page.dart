import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/resource/asset_manager.dart';
import 'package:jessy_mall/core/widgets/custom_text_field.dart';
import 'package:jessy_mall/featuers/home/presintation/page/product_details_page.dart';

import '../widget/category_home_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(start: 50.w, top: 60.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Yaman',
                              style: TextStyle(
                                  color: ColorManager.black,
                                  fontSize: 40.sp,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'user',
                              style: TextStyle(
                                  color: ColorManager.grey,
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.w900),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(end: 50.w),
                      child: const Icon(Icons.notifications_active),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              CustomTextField(
                keybordType: TextInputType.name,
                width: 800.w,
                hintText: 'Search',
                icon: Icons.search,
                textEditingController: searchController,
                validator: (v) {
                  return null;
                },
                textFieldColor: ColorManager.grey.withOpacity(0.5),
              ),
              SizedBox(
                height: 80.h,
              ),
              CarouselSlider.builder(
                itemCount: 3,
                options: CarouselOptions(
                  height: 400.h,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  enlargeFactor: 10,
                ),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(50.r),
                    child: SizedBox(
                      width: 800.w,
                      child: Image.asset(
                        AssetImageManager.market,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 120.h,
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(end: 700.w),
                child: Text(
                  'Categories',
                  style: TextStyle(
                      color: ColorManager.black,
                      fontSize: 55.sp,
                      fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const CategoryHomeCardWidget(
                      imgUrl: AssetImageManager.market,
                      categryName: 'Market',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ProductDetailsPage(
                                    isClothes: true,
                                  )));
                    },
                    child: const CategoryHomeCardWidget(
                      imgUrl: AssetImageManager.market,
                      categryName: 'Clothes',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ProductDetailsPage(
                                    isClothes: false,
                                  )));
                    },
                    child: const CategoryHomeCardWidget(
                      imgUrl: AssetImageManager.market,
                      categryName: 'Furniture',
                    ),
                  ),
                  const CategoryHomeCardWidget(
                    imgUrl: AssetImageManager.market,
                    categryName: 'Makeup',
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
