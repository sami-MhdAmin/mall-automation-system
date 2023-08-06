import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderPage extends StatelessWidget {
  final String title;
  final bool left;
  final IconButton? right;
  const HeaderPage({
    Key? key,
    required this.title,
    required this.left,
    this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        width: 1080.w,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            left
                ? SizedBox(
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon:const Icon(Icons.arrow_back_ios_rounded),
                      iconSize: 60.r,
                    ),
                  )
                : const SizedBox.shrink(),
            const Spacer(),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF303030),
                fontSize: 50.sp,
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            right ??
                SizedBox.fromSize(
                  size: Size.fromRadius(60.r),
                ),
          ],
        ),
      ),
    );
  }
}
