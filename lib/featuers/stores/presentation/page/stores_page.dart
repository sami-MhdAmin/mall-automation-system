import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/theme/color_manager.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../models/stores_model.dart';
import '../widget/custom_stores_widget.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.backgroundL,
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 80.h,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50.w),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: ColorManager.foregroundL,
                      ),
                      width: 70.w,
                      height: 70.w,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                          size: 30.w,
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 120.w),
                      child: Text(
                        widget.categoryName,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 70.h,
              ),
              Center(
                child: CustomTextField(
                  icon: Icons.search_rounded,
                  hintText: "Search Your Store",
                  textEditingController: textEditingController,
                  type: TextInputType.name,
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
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return const CustomListTileWidget(
                        imageNetworkSource:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROxoqbyf4dZqCU6klkf8YRAkppvDxiUqqlLAaz0WZtO0ESlNyOHnd8nxqjg0WPxpnFtF0&usqp=CAU",
                        storeName: "XO",
                        openAndCloseTime: "from A to Z",
                        subCategoryList: ['M', 'F', 'K'],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
