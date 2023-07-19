import 'package:flutter/material.dart';
import 'package:jessy_mall/featuers/cart/presentation/widgets/my_cart_body.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: MyCartBody(),
      ),
    );
  }
}
