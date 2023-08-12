import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:jessy_mall/featuers/profile/presentation/page/show_income&outcome_page.dart';

import '../widget/profile_card_widget.dart';

class ManageWearHousePage extends StatelessWidget {
  const ManageWearHousePage({super.key});

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
                height: 150.h,
              ),
              HeaderPage(title: 'Wearhouse', left: true),
              SizedBox(
                height: 100.h,
              ),
              ProfileCardWidget(
                titleInListTile: "View Product",
                subtitleInListTile: "You have 2 products",
                navigatorFunc: () {},
              ),
              ProfileCardWidget(
                titleInListTile: "Show inCome",
                subtitleInListTile: "You have 2 income",
                navigatorFunc: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              ShowIncomeOutcomePage(isIncome: true)));
                },
              ),
              ProfileCardWidget(
                titleInListTile: "Show outcome",
                subtitleInListTile: "You have 2 outcome",
                navigatorFunc: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              ShowIncomeOutcomePage(isIncome: false)));
                },
              ),
              ProfileCardWidget(
                titleInListTile: "Extra Space",
                subtitleInListTile: "Request For Extra Space",
                navigatorFunc: () {},
              ),
              ProfileCardWidget(
                titleInListTile: "Upload Excel File",
                subtitleInListTile: "choce excle file to upload it",
                navigatorFunc: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
