import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/widgets/custom_button.dart';
import 'package:jessy_mall/core/widgets/custom_text_field.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:jessy_mall/featuers/manage_store/widgets/time_picker.dart';

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
          height: 600.h,
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
          height: 200.h,
        ),
        CustomTextField(
          width: 900.w,
          hintText: "Store name",
          icon: Icons.store,
          textEditingController: storeNameController,
          keybordType: TextInputType.name,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter your Store Name";
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
          child: const Card(
            color: Colors.white,
            surfaceTintColor: Color(0xFFFFFFFF),
            elevation: 12,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Other Details"),
                  Divider(),
                  Text('Type: Colthes'),
                  Text('store space: 40 m'),
                  Text('Available storage space: 25 m'),
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
              child: CustomButton(onPressed: () {}, text: "Update")),
        ),
      ],
    );
  }
}
