import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager.dart';
import '../../../../core/resource/string_manager.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/header_page.dart';
import '../../../home/presintation/page/product_page.dart';
import '../../models/stores_model.dart';
import '../widget/custom_stores_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class StoresPage extends StatefulWidget {
  const StoresPage({
    required this.categoryName,
    super.key,
  });

  final String categoryName;

  @override
  State<StoresPage> createState() => _StoresPageState();
}

class _StoresPageState extends State<StoresPage> {
  final TextEditingController textEditingController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<StoresModel> storesList = [];

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  //TODO: get products

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundL,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            HeaderPage(
              left: true,
              title: widget.categoryName,
            ),
            SizedBox(height: 30.h),
            Center(
              child: CustomTextField(
                icon: Icons.search_rounded,
                hintText: StringManager.search.tr(),
                textEditingController: textEditingController,
                keybordType: TextInputType.name,
                width: 980.w,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Store Name";
                  }
                  return null;
                },
                visibility: false,
                onFieldSubmittedFunc: (value) {
                  //TODO: search for stores and put it `storesList` variable
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                  // itemCount: storesList.length,
                  padding: EdgeInsetsDirectional.only(top: 30.h, bottom: 30.h),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ProductPage(
                              categoryName: widget.categoryName,
                            ),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 300.h,
                        // width: 500.w,
                        child: const CustomListTileWidget(
                          imageNetworkSource:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROxoqbyf4dZqCU6klkf8YRAkppvDxiUqqlLAaz0WZtO0ESlNyOHnd8nxqjg0WPxpnFtF0&usqp=CAU",
                          storeName: "XO",
                          openAndCloseTime: "from A to Z",
                          // subCategoryList: ['M', 'F', 'K'],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
