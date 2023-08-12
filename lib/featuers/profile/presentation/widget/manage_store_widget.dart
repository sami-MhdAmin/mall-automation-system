import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/featuers/profile/presentation/widget/profile_card_widget.dart';

import '../../../../config/theme/color_manager.dart';
import '../page/manage_wearhouse_page.dart';
import '../page/show_bills_page.dart';

class ManageMyStoreWidget extends StatelessWidget {
  const ManageMyStoreWidget({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileCardWidget(
                    titleInListTile: "Edit Store Info",
                    subtitleInListTile: "name,image,open time,close time",
                    width: 500,
                    height: 400,
                    navigatorFunc: () {
                      //TODO:navigate to orders
                      print("navigate to orders");
                    },
                  ),
                  ProfileCardWidget(
                    titleInListTile: "Upload Excel File",
                    subtitleInListTile: "choce excel file to upload it",
                    width: 500,
                    height: 400,
                    navigatorFunc: () {
                      //TODO:navigate to orders
                      print("navigate to orders");
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileCardWidget(
                    titleInListTile: "View Product",
                    subtitleInListTile: "you have 4 product",
                    width: 550,
                    height: 400,
                    navigatorFunc: () {},
                  ),
                  ProfileCardWidget(
                    titleInListTile: "Wearhouse",
                    subtitleInListTile: "",
                    width: 500,
                    height: 400,
                    navigatorFunc: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ManageWearHousePage()));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 200.h,
              ),
              ProfileCardWidget(
                titleInListTile: "Show Bills",
                subtitleInListTile: "",
                navigatorFunc: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ShowBillsPage()));
                },
                cardColor: const Color(0xdd333333),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
