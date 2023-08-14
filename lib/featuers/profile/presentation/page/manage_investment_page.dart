import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:jessy_mall/featuers/profile/presentation/page/manage_wearhouse_page.dart';

import '../widget/manage_store_widget.dart';
import '../widget/manage_stande_widget.dart';
import '../widget/profile_card_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/featuers/investment_options/presentation/widgets/investment_store.dart';

class ManageInvestmentPage extends StatelessWidget {
  const ManageInvestmentPage({super.key});
  TabBar get _tabBar => TabBar(
        labelColor: ColorManager.black,
        unselectedLabelColor: ColorManager.grey,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: ColorManager.black,
        tabs: [
          Tab(
            icon: SizedBox(
              width: 350.w,
              child: Icon(
                Icons.store_mall_directory,
              ),
            ),
          ),
          Tab(
            icon: SizedBox(
                width: 350.w,
                child: Icon(
                  Icons.table_rows_rounded,
                )),
          ),
        ],
      );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.backgroundL,
          title: Text(
            StringManager.myInvestment.tr(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 50.sp,
              fontFamily: 'Merriweather',
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: ColorManager.backgroundL,
              child: _tabBar,
            ),
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
