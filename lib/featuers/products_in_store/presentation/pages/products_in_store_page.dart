import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/header_page.dart';
import '../../models/products_in_store_model.dart';
import '../widgets/products_in_store_widget.dart';

class ProductsInStorePage extends StatefulWidget {
  const ProductsInStorePage({super.key});

  @override
  State<ProductsInStorePage> createState() => _ProductsInStorePageState();
}

class _ProductsInStorePageState extends State<ProductsInStorePage> {
  List<ProductsInStoreModel> productsList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const HeaderPage(
              left: true,
              title: "Products In Store",
            ),
            Expanded(
              child: ListView.builder(
                // itemCount: productsList.length,
                itemCount: 8,
                padding: EdgeInsets.symmetric(
                  vertical: 50.h,
                  horizontal: 30.w,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const ProductsInStoreWidget(
                        imageNetworkSource:
                            "https://assets.weimgs.com/weimgs/rk/images/wcm/products/202316/0446/mid-century-round-coffee-table-36-48-1-q.jpg",
                        productName: "Coffe Table",
                        price: "50.00",
                      ),
                      // index !=  productsList.length-1,
                      index < 7
                          ? SizedBox(width: 900.w, child: const Divider())
                          : const SizedBox.shrink()
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
