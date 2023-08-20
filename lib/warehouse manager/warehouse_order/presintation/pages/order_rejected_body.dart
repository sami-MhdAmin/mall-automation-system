import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../../core/resource/string_manager.dart';
import '../../../../core/widgets/custom_card_movement_widget.dart';
import '../../../../core/widgets/empty_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../featuers/Auth/presintation/bloc/auth_bloc.dart';
import '../../models/warehouse_order_model.dart';
import '../bloc/warehouse_orders_bloc.dart';

// ignore: must_be_immutable
class OrderRejectedBody extends StatelessWidget {
  OrderRejectedBody({super.key});
  List<WarehouseOrdersDataModel>? warehouseRejectedData;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<WarehouseOrdersBloc>(),
      child: Scaffold(
        body: BlocConsumer<WarehouseOrdersBloc, WarehouseOrdersState>(
          listener: (context, state) {
            if (state is WarehouseRejectedOrdersSuccess) {
              warehouseRejectedData = state.warehouseOrdersModel.data;
              print(warehouseRejectedData?.length ?? "SSSSSSSSSS");
            }
          },
          builder: (context, state) {
            if (state is WarehouseOrdersInitial) {
              context
                  .read<WarehouseOrdersBloc>()
                  .add(GetRejectedEvent(context.read<AuthBloc>().token ?? ''));
            }
            return Stack(
              children: [
                warehouseRejectedData == null || warehouseRejectedData!.isEmpty
                    ? EmptyWidget(height: 1.sh)
                    : Column(
                        children: [
                          SizedBox(
                            height: 100.h,
                          ),
                          Expanded(
                            child: ListView.builder(
                                itemCount: warehouseRejectedData?.length ?? 0,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      CustomCardMovementWidget(
                                          height: 250.h,
                                          firstTextField:
                                              "${StringManager.orderFrom.tr()}: ${warehouseRejectedData?[index].investor?[0].name ?? "Investor"}",
                                          secondTextField:
                                              warehouseRejectedData?[index]
                                                      .requestDate ??
                                                  "20/08/2023",

                                          //TODO: wait for esraa
                                          quantityTextField: "04",
                                          customWidget:
                                              const SizedBox.shrink()),
                                      SizedBox(
                                        height: 30.h,
                                      )
                                    ],
                                  );
                                }),
                          ),
                        ],
                      ),
                if (state is WarehouseOrdersLoading)
                  const LoadingWidget(fullScreen: true)
              ],
            );
          },
        ),
      ),
    );
  }
}
