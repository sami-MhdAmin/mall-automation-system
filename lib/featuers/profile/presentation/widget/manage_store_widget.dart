import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';
import 'package:jessy_mall/featuers/manage_store/pages/edit_store_info.dart';
import 'package:jessy_mall/featuers/products_in_store/presentation/pages/products_in_store_page.dart';
import 'package:jessy_mall/featuers/profile/presentation/widget/profile_card_widget.dart';

import '../../../../config/theme/color_manager.dart';
import '../page/manage_wearhouse_page.dart';
import '../page/show_bills_page.dart';
import 'package:easy_localization/easy_localization.dart';

class ManageMyStoreWidget extends StatelessWidget {
  const ManageMyStoreWidget({super.key});

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
              SizedBox(
                height: 200.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileCardWidget(
                    titleInListTile: StringManager.editStroeInfo.tr(),
                    subtitleInListTile: StringManager.editStroeInfoDesc.tr(),
                    width: 500,
                    height: 400,
                    navigatorFunc: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => EditStoreInfo()));
                    },
                  ),
                  ProfileCardWidget(
                    titleInListTile: StringManager.uploadExcel.tr(),
                    subtitleInListTile: StringManager.uploadExcelDesc.tr(),
                    width: 500,
                    height: 400,
                    navigatorFunc: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProfileCardWidget(
                    titleInListTile: StringManager.showProduct.tr(),
                    subtitleInListTile:
                        "${StringManager.youHave.tr()} 4 ${StringManager.products.tr()}",
                    width: 550,
                    height: 400,
                    navigatorFunc: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ProductsInStorePage()));
                    },
                  ),
                  ProfileCardWidget(
                    titleInListTile: StringManager.wearhouse.tr(),
                    subtitleInListTile: "",
                    width: 500,
                    height: 400,
                    navigatorFunc: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ManageWearHousePage()));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 200.h,
              ),
              ProfileCardWidget(
                titleInListTile: StringManager.showBills.tr(),
                subtitleInListTile: "",
                navigatorFunc: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => ShowBillsPage()));
                },
                cardColor: const Color(0xdd333333),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
