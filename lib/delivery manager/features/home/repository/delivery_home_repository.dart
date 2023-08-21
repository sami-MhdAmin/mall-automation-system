import 'package:dartz/dartz.dart';
import 'package:jessy_mall/delivery%20manager/features/home/data/datasource/delivery_home_remote_datasource.dart';

import '../../../../core/errors/base_error.dart';
import '../../../../core/errors/execption.dart';
import '../../../../core/network/network_info.dart';
import '../models/delivery_order_model.dart';

abstract class DeliveryHomeRepository {
  Future<Either<Failure, DeliveryOrderModel>> getDeliveryOrders({
    required String token,
  });

  Future<Either<Failure, DeliveryOrderModel>> getDeliveryPendingOrders({
    required String token,
  });

  Future<Either<Failure, DeliveryOrderModel>> getDeliveryHistoryOrders({
    required String token,
  });

  Future<Either<Failure, String>> postDeliveryOrdersApprovedStatues({
    required int id,
    required String token,
    required String statues,
  });
  Future<Either<Failure, String>> postDeliveryOrdersDeliverdStatues({
    required int id,
    required String token,
    required int statues,
  });
}
