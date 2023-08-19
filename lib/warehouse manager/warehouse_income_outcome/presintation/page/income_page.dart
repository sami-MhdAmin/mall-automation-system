import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/widgets/custom_card_movement_widget.dart';
import '../../../../core/widgets/loading_widget.dart';
import '../../../../featuers/Auth/presintation/bloc/auth_bloc.dart';
import '../../models/income_model.dart';
import '../bloc/warehouse_income_outcome_bloc.dart';

// ignore: must_be_immutable
class IncomeBody extends StatelessWidget {
  IncomeBody({super.key});
  List<IncomeDataModel>? incomeModelData;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<WarehouseIncomeOutcomeBloc>(),
      child: Scaffold(
        body: BlocConsumer<WarehouseIncomeOutcomeBloc,
            WarehouseIncomeOutcomeState>(
          listener: (context, state) {
            if (state is WarehouseIncomeGetDataSuccess) {
              incomeModelData = state.incomeModel.data;

              // print(incomeModelData!.length);
            }
          },
          builder: (context, state) {
            if (state is WarehouseInitial) {
              context.read<WarehouseIncomeOutcomeBloc>().add(
                  IncomeGetIncomeDataEvent(
                      token: context.read<AuthBloc>().token ?? ''));
            }
            return Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 100.h,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: incomeModelData?.length ?? 0,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                CustomCardMovementWidget(
                                  height: 350.h,
                                  firstTextField:
                                       incomeModelData?[index]
                                              .warehouseProduct?[0]
                                              .name ??
                                      "product x",
                                  secondTextField:
                                      incomeModelData?[index].inDate ??
                                          "20/08/2023",
                                  quantityTextField: incomeModelData?[index]
                                          .quantityAfter
                                          .toString() ??
                                      "5000",
                                  fourthTextField:
                                      incomeModelData?[index].warehouseStore ??
                                          "storreeeeee",
                                ),
                                SizedBox(
                                  height: 30.h,
                                )
                              ],
                            );
                          }),
                    ),
                  ],
                ),
                if (state is WarehouseIncomeLoading)
                  const LoadingWidget(fullScreen: true),
              ],
            );
          },
        ),
      ),
    );
  }
}
