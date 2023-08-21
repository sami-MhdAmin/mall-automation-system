part of 'warehouse_orders_bloc.dart';

@immutable
abstract class WarehouseOrdersState {}

class WarehouseOrdersInitial extends WarehouseOrdersState {}

class WarehouseOrdersLoading extends WarehouseOrdersState {}

class WarehouseOrdersFailed extends WarehouseOrdersState {
  final Failure failure;

  WarehouseOrdersFailed({required this.failure});
}

class WarehousePendingOrdersSuccess extends WarehouseOrdersState {
  final WarehouseOrdersModel warehouseOrdersModel;

  WarehousePendingOrdersSuccess({required this.warehouseOrdersModel});
}

class WarehouseApprovedOrdersSuccess extends WarehouseOrdersState {
  final WarehouseOrdersModel warehouseOrdersModel;

  WarehouseApprovedOrdersSuccess({required this.warehouseOrdersModel});
}

class WarehouseRejectedOrdersSuccess extends WarehouseOrdersState {
  final WarehouseOrdersModel warehouseOrdersModel;

  WarehouseRejectedOrdersSuccess({required this.warehouseOrdersModel});
}
