import 'package:flutter/material.dart';
import 'package:jessy_mall/featuers/home/presintation/page/home_page.dart';

class ConstManager {
  static String baseUrl = 'baseurl/';

  static final List<Widget> pageOptions = [
    HomePage(),
    Container(
      color: Colors.amber,
    ),
    Container(color: Colors.black,),
    Container(color: Colors.blue,),
  ];
}
