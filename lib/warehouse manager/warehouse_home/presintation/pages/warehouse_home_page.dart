import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager.dart';
import '../../../../core/resource/string_manager.dart';
import '../../../../core/widgets/langauge_switcher_widget.dart';
import '../../../../featuers/investment_options/presentation/page/investment_options.dart';
import '../../../../featuers/investment_options/presentation/widgets/investment_store.dart';
import '../../../warehouse_income_outcome/presintation/page/income_page.dart';
import '../../../warehouse_income_outcome/presintation/page/outcome_page.dart';
import '../../../warehouse_order/presintation/pages/warehouse_order_page.dart';
import 'warehouse_product_body.dart';
import 'package:easy_localization/easy_localization.dart';

class WarehouseHomePage extends StatefulWidget {
  const WarehouseHomePage({super.key});
  @override
  State<WarehouseHomePage> createState() => _WarehouseHomePageState();
}

class _WarehouseHomePageState extends State<WarehouseHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//for tabBar

  TabBar get _tabBar => TabBar(
        labelColor: ColorManager.black,
        unselectedLabelColor: ColorManager.grey,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: ColorManager.black,
        tabs: [
          Tab(
            icon: SizedBox(
              width: 200,
              child: Text(
                StringManager.products.tr(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Tab(
            icon: SizedBox(
                width: 200,
                child: Text(
                  StringManager.income.tr(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                )),
          ),
          Tab(
            icon: SizedBox(
                width: 200,
                child: Text(
                  StringManager.outcome.tr(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                )),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //TODO: translate drawer
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: ColorManager.black,
                ),
                child: SizedBox(
                  height: 10.w,
                  width: 10.w,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Space Request'),
                selected: _selectedIndex == 0,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(0);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Increse warehouse space'),
                selected: _selectedIndex == 1,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(1);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Logout'),
                selected: _selectedIndex == 2,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(2);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 1000.h,
              ),
              GestureDetector(
                onTap: () => setState(() {}),
                child: LanguageSwitcherWidget(
                  context: context,
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: ColorManager.backgroundL,
          title: Text(
            StringManager.homePage.tr(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: ColorManager.black,
              fontSize: 50.sp,
              fontFamily: 'Merriweather',
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(Icons.notifications_active_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => WarehouseOrderPage()),
                  );
                })
          ],
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: ColorManager.backgroundL,
              child: _tabBar,
              // child: Container(color: ColorManager.backgroundL, child: _tabBar),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            //began
            WarehouseProductBody(),
            //End

            //began
            IncomeBody(),
            //End

            //began
            OutcomeBody(),
            //End
          ],
        ),
      ),
    );
  }
}
