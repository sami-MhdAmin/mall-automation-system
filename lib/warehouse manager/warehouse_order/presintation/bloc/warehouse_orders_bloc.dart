import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/errors/base_error.dart';
import '../../models/warehouse_order_model.dart';
import '../../repository/warehouse_orders_repository.dart';

part 'warehouse_orders_event.dart';
part 'warehouse_orders_state.dart';

class WarehouseOrdersBloc
    extends Bloc<WarehouseOrdersEvent, WarehouseOrdersState> {
  final WarehouseOrdersRepository _warehouseOrdersRepository;
  WarehouseOrdersBloc(this._warehouseOrdersRepository)
      : super(WarehouseOrdersInitial()) {
    on<GetPendingEvent>((event, emit) async {
      emit(WarehouseOrdersLoading());
      final successOrFailuer =
          await _warehouseOrdersRepository.getPending(event.token);

      successOrFailuer.fold(
        (error) {
          emit(WarehouseOrdersFailed(failure: error));
        },
        (pendingDataModel) {
          emit(WarehousePendingOrdersSuccess(
              warehouseOrdersModel: pendingDataModel));
        },
      );
    });

    on<GetApprovedEvent>((event, emit) async {
      emit(WarehouseOrdersLoading());
      final successOrFailuer =
          await _warehouseOrdersRepository.getApproved(event.token);

      successOrFailuer.fold(
        (error) {
          emit(WarehouseOrdersFailed(failure: error));
        },
        (approvedDataModel) {
          emit(WarehouseApprovedOrdersSuccess(
              warehouseOrdersModel: approvedDataModel));
        },
      );
    });

    on<GetRejectedEvent>((event, emit) async {
      emit(WarehouseOrdersLoading());
      final successOrFailuer =
          await _warehouseOrdersRepository.getRejected(event.token);

      successOrFailuer.fold(
        (error) {
          emit(WarehouseOrdersFailed(failure: error));
        },
        (rejectedDataModel) {
          emit(WarehouseRejectedOrdersSuccess(
              warehouseOrdersModel: rejectedDataModel));
        },
      );
    });
  }
}
