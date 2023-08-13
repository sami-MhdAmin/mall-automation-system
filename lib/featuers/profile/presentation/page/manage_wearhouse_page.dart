import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:jessy_mall/featuers/products_in_warehouse/presentation/pages/products_in_warehouse_page.dart';
import 'package:jessy_mall/featuers/profile/presentation/page/show_income&outcome_page.dart';

import '../../../products_in_store/presentation/pages/products_in_store_page.dart';
import '../widget/profile_card_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class ManageWearHousePage extends StatelessWidget {
  const ManageWearHousePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                navigatorFunc: () {},
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
