import 'package:flutter/material.dart';
import 'package:jessy_mall/featuers/Favorite/presentation/widgets/favorite_body.dart';
import 'package:jessy_mall/featuers/cart/presentation/widgets/my_cart_body.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FavoriteBody(),
    );
  }
}
