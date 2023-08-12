import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:jessy_mall/featuers/profile/presentation/page/manage_wearhouse_page.dart';

import '../widget/manage_store_widget.dart';
import '../widget/manage_stande_widget.dart';
import '../widget/profile_card_widget.dart';

import 'package:flutter/material.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/featuers/investment_options/presentation/widgets/investment_store.dart';

class ManageInvestmentPage extends StatelessWidget {
  const ManageInvestmentPage({super.key});
  TabBar get _tabBar => TabBar(
        unselectedLabelColor: ColorManager.backgroundL,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: ColorManager.foregroundL,
        indicator: BoxDecoration(color: ColorManager.backgroundL),
        tabs: const [
          Tab(
              icon: SizedBox(
            width: 200,
            child: Icon(
              Icons.store_mall_directory,
              // color: ColorManager.backgroundL,
            ),
          )),
          Tab(
              icon: Icon(
            Icons.table_rows_rounded,
            // color: ColorManager.backgroundL,
          )),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.foregroundL,
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              // color: ColorManager.backgroundTabBar,
              child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          ColorManager.foregroundL,
                          ColorManager.backgroundTabBar,
                        ]),
                  ),
                  child: _tabBar),
            ),
          ),
          title: Text(
            'My Investment',
            style: TextStyle(color: ColorManager.backgroundL),
          ),
        ),
        body: const TabBarView(
          children: [
            //began investment store UI
            ManageMyStoreWidget(),
            //End investment store UI

            // began investment stand
            ManageMyStandWidget(),
            //end investment stand
          ],
        ),
      ),
    );
  }
}
