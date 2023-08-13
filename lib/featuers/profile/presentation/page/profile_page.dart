import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/core/widgets/langauge_switcher_widget.dart';
import 'package:jessy_mall/featuers/investment_options/presentation/page/investment_options.dart';
import 'package:jessy_mall/featuers/profile/presentation/page/manage_investment_page.dart';

import '../../../../config/theme/color_manager.dart';
import '../../../../core/resource/string_manager.dart';
import '../widget/profile_card_widget.dart';
import 'my_order_page.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage(
      {required this.userName,
      required this.userEmail,
      required this.orderCount,
      required this.shippingAddressesCount,
      required this.storeInvestedCount,
      super.key});

  final String userName, userEmail;
  final int orderCount, shippingAddressesCount, storeInvestedCount;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundL,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox.fromSize(
                    size: Size.fromRadius(70.r),
                  ),
                  Text(
                    StringManager.profile.tr(),
                    style: TextStyle(
                      fontSize: 44.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.logout_rounded,
                      color: Colors.black,
                      size: 70.r,
                    ),
                    onPressed: () {
                      //TODO:
                      print("Logout");
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: ColorManager.blue,
                  radius: 100.r,
                ),
                title: Text(
                  widget.userName,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorManager.foregroundL,
                    fontSize: 42.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // titleAlignment: ,
                subtitle: Text(
                  widget.userEmail,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorManager.grey,
                    fontSize: 30.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70.h,
            ),

            //My orders
            ProfileCardWidget(
              titleInListTile: StringManager.myOrders.tr(),
              subtitleInListTile:
                  "${StringManager.alreadyHave.tr()} ${widget.orderCount} ${StringManager.orders.tr()}",
              navigatorFunc: () {
                //TODO:navigate to orders
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const MyOrderPage()),
                );
              },
            ),

            //shipping addresses
            // ProfileCardWidget(
            //   titleInListTile: "Shipping Addresses",
            //   subtitleInListTile: "$shippingAddressesCount addresses",
            //   navigatorFunc: () {
            //     //TODO:navigate to orders
            //     print("navigate to shipping addresses");
            //   },
            // ),

            //invest store or stand
            ProfileCardWidget(
              titleInListTile: StringManager.investStoreOrStand.tr(),
              subtitleInListTile:
                  "${StringManager.youHave.tr()}${widget.storeInvestedCount} ${StringManager.storeOrStandInvested.tr()}",
              navigatorFunc: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => InvestmentOptions()));
              },
            ),

            //settings
            // ProfileCardWidget(
            //   titleInListTile: "Settings",
            //   subtitleInListTile: "Language, FAQ, Contact...",
            //   navigatorFunc: () {
            //     //TODO:navigate to orders
            //     print("navigate to Settings");
            //   },
            // ),

            //Manage My Investment
            ProfileCardWidget(
              titleInListTile: StringManager.manageMyInvestment.tr(),
              subtitleInListTile: StringManager.manageMyInvestment.tr(),
              navigatorFunc: widget.storeInvestedCount == 0
                  ? null
                  : () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ManageInvestmentPage()));
                    },
            ),
            SizedBox(
              height: 70.h,
            ),
            GestureDetector(
                onTap: () => setState(() {}),
                child: LanguageSwitcherWidget(
                  context: context,
                ),),
          ],
        ),
      ),
    );
  }
}
