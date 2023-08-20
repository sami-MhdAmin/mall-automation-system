part of 'warehouse_orders_bloc.dart';

@immutable
abstract class WarehouseOrdersEvent {}

class GetPendingEvent extends WarehouseOrdersEvent {
  final String token;

  GetPendingEvent(this.token);
}

class GetApprovedEvent extends WarehouseOrdersEvent {
  final String token;

  GetApprovedEvent(this.token);
}

class GetRejectedEvent extends WarehouseOrdersEvent {
  final String token;

  GetRejectedEvent(this.token);
}
