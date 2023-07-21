// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../../config/theme/color_manager.dart';

// class BuildItemWidget extends StatelessWidget {
//   const BuildItemWidget({super.key, required this.active, required this.icon});
//   final bool active;
//   // final String imgUrl;
//   final IconData icon;

//   @override
//   Widget build(BuildContext context) {
//     return active
//         ? Padding(
//             padding: EdgeInsets.all(13.h),
//             child: CircleAvatar(
//               backgroundColor: ColorManager.primery.withOpacity(0.1),
//               child: Icon(
//                 icon,
//                 size: 30.h,
//                 color: ColorManager.primery,
//               ),
//               //  SvgPicture.asset(
//               //   imgUrl,
//               //   color: ColorManage.primery,
//               // ),
//             ),
//           )
//         : Icon(
//             icon,
//             size: 25.h,
//             color: ColorManage.grey,
//           );
//     //  SvgPicture.asset(
//     //     imgUrl,
//     //     color: ColorManage.primery,
//     //     height: 14.h,
//     //   );
//   }
// }
