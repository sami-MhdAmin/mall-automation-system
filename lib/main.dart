import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/featuers/bottom_navigation_bar/presintation/page/bottom_navigation_bar.dart';
import 'package:jessy_mall/featuers/home/presintation/page/home_page.dart';
import 'package:jessy_mall/featuers/Favorite/presentation/pages/favorite.dart';
import 'package:jessy_mall/featuers/cart/presentation/pages/my_cart.dart';

import 'core/injection_container/auth_injection.dart' ;
import 'core/injection_container/main_injection.dart';
import 'featuers/Auth/presintation/page/login_page.dart';
import 'featuers/Auth/presintation/page/register_page.dart';
import 'featuers/profile/presentation/page/profile_page.dart';
import 'featuers/stores/presentation/page/stores_page.dart';
import 'featuers/investment_options/presentation/page/investment_options.dart';
import 'featuers/investment_options/presentation/page/invest_store_ui.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();

  await initInjection();
  runApp(const MyApp());
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
            home: BottomNavigationBarWidget());
      },
    );
  }
}
