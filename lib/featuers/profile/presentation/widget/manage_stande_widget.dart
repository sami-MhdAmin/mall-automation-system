import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/featuers/profile/presentation/page/show_bills_page.dart';
import 'package:jessy_mall/featuers/profile/presentation/widget/profile_card_widget.dart';

import '../../../../config/theme/color_manager.dart';

class ManageMyStandWidget extends StatelessWidget {
  const ManageMyStandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,
        width: 1.sw,
        color: ColorManager.backgroundL,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200.h,
              ),
              ProfileCardWidget(
                titleInListTile: "Upload Excel File",
                subtitleInListTile: "choce excel file to upload it",
                navigatorFunc: () {},
              ),
              ProfileCardWidget(
                titleInListTile: "View Product",
                subtitleInListTile: "you have 4 product",
                navigatorFunc: () {},
              ),
              ProfileCardWidget(
                titleInListTile: "Show Bills",
                subtitleInListTile: "",
                navigatorFunc: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ShowBillsPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
