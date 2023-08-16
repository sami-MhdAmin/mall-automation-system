import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:jessy_mall/featuers/products_in_warehouse/presentation/pages/products_in_warehouse_page.dart';
import 'package:jessy_mall/featuers/profile/presentation/page/show_income&outcome_page.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../products_in_store/presentation/pages/products_in_store_page.dart';
import '../widget/profile_card_widget.dart';
import 'package:easy_localization/easy_localization.dart';

import '../widget/space_request_number_widget.dart';

class ManageWearHousePage extends StatelessWidget {
  const ManageWearHousePage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedNumber = 5;
    void modalBottomSheetMenu() {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 700.h,
            width: 1000.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            ),
            child: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return Column(
                  // direction: Axis.horizontal,
                  // crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.symmetric(
                          vertical: 50.h, horizontal: 50.w),
                      child: Wrap(
                        spacing: 30.w,
                        direction: Axis.horizontal,
                        children: List.generate(
                          3,
                          (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedNumber = (index + 1) * 5;
                                });
                              },
                              child: InvestorSpaceRequestNumberWidget(
                                index: (index + 1) * 5,
                                color: selectedNumber == (index + 1) * 5
                                    ? ColorManager.black
                                    : ColorManager.grey,
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 120.h),
                    CustomButton(
                      text: StringManager.confirm.tr(),
                      onPressed: () {
                        print(selectedNumber);

                        //TODO: yaman
                      },
                    ),
                  ],
                );
              },
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Container(
        height: 1.sh,
        width: 1.sw,
        color: ColorManager.backgroundL,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderPage(title: StringManager.wearhouse.tr(), left: true),
              SizedBox(
                height: 100.h,
              ),
              ProfileCardWidget(
                titleInListTile: StringManager.showProduct.tr(),
                subtitleInListTile:
                    "${StringManager.youHave.tr()} 2 ${StringManager.products.tr()}",
                navigatorFunc: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const ProductsInWarehousePage()));
                },
              ),
              ProfileCardWidget(
                titleInListTile: StringManager.showIncome.tr(),
                subtitleInListTile:
                    "${StringManager.youHave.tr()} 2 ${StringManager.products.tr()}",
                navigatorFunc: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              const ShowIncomeOutcomePage(isIncome: true)));
                },
              ),
              ProfileCardWidget(
                titleInListTile: StringManager.showOutcome.tr(),
                subtitleInListTile:
                    "${StringManager.youHave.tr()} 2 ${StringManager.products.tr()}",
                navigatorFunc: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) =>
                              const ShowIncomeOutcomePage(isIncome: false)));
                },
              ),
              ProfileCardWidget(
                titleInListTile: StringManager.extraSpace.tr(),
                subtitleInListTile: StringManager.extraSpacedesc.tr(),
                navigatorFunc: () {
                  modalBottomSheetMenu();
                },
              ),
              ProfileCardWidget(
                titleInListTile: StringManager.uploadExcel.tr(),
                subtitleInListTile: StringManager.uploadExcelDesc.tr(),
                navigatorFunc: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
