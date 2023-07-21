import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteCard extends StatelessWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 300.h,
        width: 20.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    height: 250.h,
                    width: 250.w,
                    color: Colors.black,
                  )),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Minimal Stand',
                  style: TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '\$ 25.00',
                  style: TextStyle(
                    color: Color(0xFF232323),
                    fontSize: 16,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Icon(Icons.highlight_remove_outlined),
                Expanded(child: SizedBox()),
                // Icon(Icons.shopping_bag),
                Icon(Icons.shopify),
              ],
            )
          ],
        ),
      ),
    );
  }
}
