import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/core/widgets/langauge_switcher_widget.dart';
import 'package:jessy_mall/featuers/investment_options/presentation/page/investment_options.dart';
import 'package:jessy_mall/featuers/profile/presentation/page/manage_investment_page.dart';

import '../../../../config/theme/color_manager.dart';
import '../widget/profile_card_widget.dart';
import 'my_order_page.dart';

class ProfilePage extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundL,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 100.w),
                    child: Text(
                      "Profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 45.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 50.w),
                  child: IconButton(
                    icon: Icon(
                      Icons.logout_rounded,
                      color: Colors.black,
                      size: 50.w,
                    ),
                    onPressed: () {
                      //TODO:
                      print("Logout");
                    },
                  ),
                ),
              ],
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
                  userName,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorManager.foregroundL,
                    fontSize: 42.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // titleAlignment: ,
                subtitle: Text(
                  userEmail,
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
              titleInListTile: "My Orders",
              subtitleInListTile: "Already have $orderCount orders",
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
              titleInListTile: "Invest Store or Stand",
              subtitleInListTile:
                  "You have already $storeInvestedCount Stores or Stands invested",
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
              titleInListTile: "Manage My Investment",
              subtitleInListTile: "Manage your investments",
              navigatorFunc: storeInvestedCount == 0
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
            LanguageSwitcherWidget()
          ],
        ),
      ),
    );
  }
}
