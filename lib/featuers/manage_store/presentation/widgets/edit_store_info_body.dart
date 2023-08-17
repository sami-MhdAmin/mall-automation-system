import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';
import 'package:jessy_mall/core/widgets/custom_button.dart';
import 'package:jessy_mall/core/widgets/custom_text_field.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:jessy_mall/featuers/manage_store/presentation/widgets/time_picker.dart';
import 'package:easy_localization/easy_localization.dart';

class EditStoreInfoBody extends StatefulWidget {
  const EditStoreInfoBody({super.key});

  @override
  State<EditStoreInfoBody> createState() => _EditStoreInfoBodyState();
}

class _EditStoreInfoBodyState extends State<EditStoreInfoBody> {
  final TextEditingController storeNameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    storeNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 750.h,
          color: ColorManager.foregroundL,
          child: Column(
            children: [
              HeaderPage(title: "Edit store", left: true),
              SizedBox(
                width: 350.r,
                height: 350.r,
                child: Transform.translate(
                  offset: Offset(0, 280.h),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 160.r,
                      backgroundColor: Colors.yellow,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 250.h,
        ),
        CustomTextField(
          width: 900.w,
          hintText: StringManager.storeName.tr(),
          icon: Icons.store,
          textEditingController: storeNameController,
          keybordType: TextInputType.name,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return StringManager.pleaseEnterStoreName.tr();
            }
            return null;
          },
        ),
        SizedBox(
          height: 32.h,
        ),
        SizedBox(
          width: 900.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 400.w,
                child: TimePickerOptions(
                  themeMode: ThemeMode.dark,
                  useMaterial3: true,
                ),
              ),
              SizedBox(
                width: 400.w,
                child: TimePickerOptions(
                  themeMode: ThemeMode.dark,
                  useMaterial3: true,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 64.h,
        ),

//Card Other Details
        SizedBox(
          width: 900.w,
          height: 500.h,
          child: Card(
            color: ColorManager.backgroundL,
            surfaceTintColor: ColorManager.backgroundL,
            elevation: 12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(StringManager.otherDetails.tr()),
                  const Divider(),
                  Text(StringManager.type.tr() + "Clothes"),
                  Text(StringManager.storeSpace.tr() + '40 m'),
                  Text(StringManager.availableStorageSpace.tr() + '25 m'),
                ],
              ),
            ),
          ),
        ),
////

        Expanded(
          child: SizedBox(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: SizedBox(
              width: 900.w,
              child: CustomButton(
                  onPressed: () {}, text: StringManager.update.tr())),
        ),
      ],
    );
  }
}
