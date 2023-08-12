import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

class LanguageSwitcherWidget extends StatefulWidget {
  const LanguageSwitcherWidget({super.key});

  @override
  State<LanguageSwitcherWidget> createState() => _LanguageSwitcherWidgetState();
}

class _LanguageSwitcherWidgetState extends State<LanguageSwitcherWidget> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 250.w,
      height: 130.h,
      valueFontSize: 15.sp,
      toggleSize: 100.h,
      value: switchValue,
      borderRadius: 100.r,
      padding: 0,
      showOnOff: false,
      activeIcon: Text(
        'EN',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 8.sp),
      ),
      inactiveIcon: Text(
        'AR',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 8.sp),
      ),
      activeColor: Colors.white,
      inactiveColor: Colors.white,
      toggleColor: Colors.orange,
      switchBorder: Border.all(color: Colors.orange),
      onToggle: (val) {
        setState(() {
          switchValue = val;
        });
        val == true
            ? context.setLocale(Locale('en', 'US'))
            : context.setLocale(Locale('ar', 'SA'));
      },
    );
  }
}
