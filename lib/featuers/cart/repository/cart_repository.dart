import 'package:dartz/dartz.dart';
import 'package:jessy_mall/featuers/cart/models/cart_model.dart';

import '../../../core/errors/base_error.dart';

abstract class CartRepository {
  Future<Either<Failure, CartModel>> getAllCartOrder(String token);
}
