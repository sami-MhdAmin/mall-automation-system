import 'package:flutter/material.dart';
import 'package:jessy_mall/featuers/Favorite/presentation/pages/favorite.dart';
import 'package:jessy_mall/featuers/cart/presentation/pages/my_cart.dart';
import 'package:jessy_mall/featuers/home/presintation/page/home_page.dart';
import 'package:jessy_mall/featuers/profile/presentation/page/profile_page.dart';

class ConstManager {
  static String baseUrl = 'https://mall.yaakoot.com.au/api';
  static String clothesCategory = 'Clothes';
  static String marketCategory = 'Market';

  static String makeupCategory = 'MakeUp';
  static String furnitureCategory = 'Furniture';

  static final List<Widget> pageOptions = [
    const HomePage(),
    const MyCartPage(),
    const FavoritePage(),
    const ProfilePage(
        userName: 'userName',
        userEmail: 'userEmail',
        orderCount: 2,
        shippingAddressesCount: 2,
        storeInvestedCount: 1)
  ];
}
