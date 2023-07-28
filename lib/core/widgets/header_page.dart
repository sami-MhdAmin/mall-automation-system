import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderPage extends StatelessWidget {
  final String title;
  final IconButton? left;
  final IconButton? right;
  const HeaderPage({
    Key? key,
    required this.title,
    this.left,
    this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        left ?? const SizedBox.shrink(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF303030),
            fontSize: 40.sp,
            fontFamily: 'Merriweather',
            fontWeight: FontWeight.w700,
          ),
        ),
        right ?? const SizedBox.shrink()
      ],
    );
  }
}
