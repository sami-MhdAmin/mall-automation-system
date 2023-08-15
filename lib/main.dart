import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/featuers/bottom_navigation_bar/presintation/page/bottom_navigation_bar.dart';
import 'package:jessy_mall/featuers/home/presintation/page/home_page.dart';
import 'package:jessy_mall/featuers/Favorite/presentation/pages/favorite.dart';
import 'package:jessy_mall/featuers/cart/presentation/pages/my_cart.dart';
import 'package:jessy_mall/featuers/manage_store/pages/add_income.dart';
import 'package:jessy_mall/featuers/profile/presentation/bloc/profile_bloc.dart';
import 'package:jessy_mall/featuers/profile/presentation/page/manage_investment_page.dart';
import 'package:jessy_mall/warehouse%20manager/warehouse_home/presintation/pages/warehouse_home_page.dart';
import 'package:jessy_mall/warehouse%20manager/warehouse_home/presintation/pages/warehouse_product_movement.dart';
import 'package:jessy_mall/warehouse%20manager/warehouse_order/presintation/pages/order_details_page.dart';
import 'package:jessy_mall/warehouse%20manager/warehouse_order/presintation/pages/warehouse_order_page.dart';

import 'delivery manager/features/home/presentation/page/delivery_home_page.dart';
import 'featuers/Auth/presintation/page/login_page.dart';
import 'featuers/Auth/presintation/page/register_page.dart';
import 'featuers/manage_store/pages/edit_store_info.dart';
import 'featuers/profile/presentation/page/profile_page.dart';
import 'featuers/stores/presentation/page/stores_page.dart';
import 'featuers/investment_options/presentation/page/investment_options.dart';
import 'featuers/investment_options/presentation/page/invest_store_ui.dart';
import 'package:easy_localization/easy_localization.dart';

import 'injection_container/main_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await initInjection();
  runApp(EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('ar', 'SA')],
      // fallbackLocale: const Locale('en', 'US'),
      path: 'asset/translations',
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 2340),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          home: WarehouseHomePage(),
        );
      },
    );
  }
}
