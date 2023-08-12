import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resource/string_manager.dart';
import '../../../../core/widgets/header_page.dart';
import '../../models/profile_model.dart';
import '../widget/order_card_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({super.key});

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  List<ProfileOrdersModel> profileOrdersList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderPage(
            left: true,
            title: StringManager.orders.tr(),
          ),
          Expanded(
              child: ListView.builder(
            // itemCount: profileOrdersList.length,
            itemCount: 8,
            padding: EdgeInsets.symmetric(
              vertical: 50.h,
              horizontal: 30.w,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 30.h),
                child: const OrderCardWidget(
                  userNameText: "salimo",
                  dateText: "20/03/2023",
                  quantityText: "03",
                  amountText: "150",
                  orderDetailsId: 5,
                  isDelivered: false,
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
