import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'featuers/Auth/presintation/page/login_page.dart';
import 'featuers/Auth/presintation/page/register_page.dart';
import 'featuers/profile/presentation/page/profile_page.dart';
import 'featuers/stores/presentation/page/stores_page.dart';
import 'featuers/investment_options/presintation/page/investment_options.dart';

void main() {
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
          home: const ProfilePage(
            userName: "salimo",
            userEmail: "salimo@gmail.com",
            orderCount: 10,
            shippingAddressesCount: 2,
            storeInvestedCount: 0,
          ),
        );
      },
    );
  }
}
