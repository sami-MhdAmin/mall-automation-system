import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jessy_mall/config/theme/color_manager.dart';
import 'package:jessy_mall/core/resource/const_manager.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';
import 'package:jessy_mall/core/widgets/custom_button.dart';
import 'package:jessy_mall/core/widgets/custom_text_field.dart';
import 'package:jessy_mall/core/widgets/header_page.dart';
import 'package:jessy_mall/featuers/manage_store/models/store_model.dart';
import 'package:jessy_mall/featuers/manage_store/presentation/bloc/edit_store_bloc/edit_store_bloc.dart';
import 'package:jessy_mall/featuers/manage_store/presentation/widgets/time_picker.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:jessy_mall/featuers/profile/presentation/bloc/profile_bloc.dart';

import '../../../Auth/presintation/bloc/auth_bloc.dart';

class EditStoreInfoBody extends StatefulWidget {
  const EditStoreInfoBody({super.key});

  @override
  State<EditStoreInfoBody> createState() => _EditStoreInfoBodyState();
}

class _EditStoreInfoBodyState extends State<EditStoreInfoBody> {
  final TextEditingController storeNameController =
      TextEditingController(text: "Store Name");
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  StoreInfoModel? storeInfoModel;
  @override
  void dispose() {
    storeNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2300.h,
      child: BlocConsumer<EditStoreBloc, EditStoreState>(
        listener: (context, state) {
          if (state is EditStoreFailed) {
            //TODO: dialog with alert YAMANAAAAAAAA
          }
          if (state is EditStoreSuccess) {
            // print(state.profileModel.profileDataModel?.email);
            print(state.storeModel);
            print(state.storeModel.storeInfoDataModel);
            print(state.storeModel.storeInfoDataModel?.name);
            storeInfoModel = state.storeModel.storeInfoDataModel;
            storeNameController.text = storeInfoModel?.name ?? "no initial";
            print(storeInfoModel?.image ?? "dgsfedwhw");
          }
        },
        builder: (context, state) {
          TimeOfDay time = TimeOfDay.now();
          if (state is EditStoreInitial) {
            context.read<EditStoreBloc>().add(
                GetEditStoreEvent(token: context.read<AuthBloc>().token ?? ''));
          }
          return Column(
            children: [
              Container(
                height: 750.h,
                color: ColorManager.foregroundL,
                child: Column(
                  children: [
                    //TODO translete
                    HeaderPage(title: "Edit store", left: true),
                    SizedBox(
                      width: 350.r,
                      height: 350.r,
                      child: Transform.translate(
                        offset: Offset(0, 280.h),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            //TODO : add image

                            radius: 160.r,
                            backgroundColor: Colors.yellow,
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(160.r),
                              child: CachedNetworkImage(
                                imageUrl: "${storeInfoModel?.image}" ?? "",
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
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
                // initialValue:
                //     storeInfoModel?.name ?? StringManager.storeName.tr(),
                width: 900.w,
                // hintText: StringManager.storeName.tr(),
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
                        textOpenOrClose: "Open time",
                        // openOrCloseTime: ,
                        color: ColorManager.green,
                      ),
                    ),
                    SizedBox(
                      width: 400.w,
                      child: TimePickerOptions(
                        themeMode: ThemeMode.dark,
                        useMaterial3: true,
                        textOpenOrClose: "Close time",
                        color: ColorManager.red,
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
                height: 600.h,
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
                        Text(StringManager.type.tr() +
                            "${storeInfoModel?.type}"),
                        Text(StringManager.storeSpace.tr() +
                            "${storeInfoModel?.store_space} m"),
                        // Text(StringManager.availableStorageSpace.tr() + '25 m'),
                        Text("Open time: " + '${storeInfoModel?.openTime}'),
                        Text("Close time: " + '${storeInfoModel?.closeTime}'),
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
        },
      ),
    );
  }
}
