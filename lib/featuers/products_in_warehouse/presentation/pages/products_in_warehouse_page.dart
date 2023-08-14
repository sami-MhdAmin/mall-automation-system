import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resource/string_manager.dart';
import '../../../../core/widgets/header_page.dart';
import '../../models/products_in_warehouse_model.dart';
import '../widgets/products_in_warehouse_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class ProductsInWarehousePage extends StatefulWidget {
  const ProductsInWarehousePage({super.key});

  @override
  State<ProductsInWarehousePage> createState() =>
      _ProductsInWarehousePageState();
}

class _ProductsInWarehousePageState extends State<ProductsInWarehousePage> {
  List<ProductsInWarehouseModel> productsList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderPage(
              left: true,
              title: StringManager.productsInWarehouse.tr(),
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
                      const ProductsInWarehouseWidget(
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
