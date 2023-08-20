import 'dart:io' as used;
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
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

import '../../../../core/utils/global_snackbar.dart';
import '../../../Auth/presintation/bloc/auth_bloc.dart';

String? openStoreTime;
String? closeStoreTime;

class EditStoreInfoBody extends StatefulWidget {
  const EditStoreInfoBody({super.key});

  @override
  State<EditStoreInfoBody> createState() => _EditStoreInfoBodyState();
}

class _EditStoreInfoBodyState extends State<EditStoreInfoBody> {
  used.File? imageController;

  final picker = ImagePicker();
  File? storeImage;

  Future takePhotoFromGallery() async {
    final selectedImage = await picker.pickImage(
      source: ImageSource.gallery,
    );

    setState(() {
      if (selectedImage != null) {
        imageController = used.File(selectedImage.path);
      }
    });
  }

  final TextEditingController storeNameController =
      TextEditingController(text: StringManager.storeName.tr());
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
                    HeaderPage(
                      title: StringManager.editStroeInfo.tr(),
                      left: true,
                      color: ColorManager.backgroundL,
                    ),
                    SizedBox(
                      width: 350.r,
                      height: 350.r,
                      child: Transform.translate(
                        offset: Offset(0, 280.h),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: InkWell(
                            onTap: () async {
                              await takePhotoFromGallery();
                              Image.file(
                                used.File(imageController!.path),
                                width: double.infinity,
                                fit: BoxFit.fill,
                              );

                              storeImage = used.File(imageController!.path);
                            },
                            child: CircleAvatar(
                              //TODO : add image CIRCULAR + loading

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
                        textOpenOrClose: StringManager.openTime.tr(),
                        // openOrCloseTime: ,
                        color: ColorManager.green, openOrCloseStoreTime: 1,
                      ),
                    ),
                    SizedBox(
                      width: 400.w,
                      child: TimePickerOptions(
                        themeMode: ThemeMode.dark,
                        useMaterial3: true,
                        textOpenOrClose: StringManager.closeTime.tr(),
                        color: ColorManager.red,
                        openOrCloseStoreTime: 0,
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
                        Text("${StringManager.openTime.tr()}: " +
                            '${storeInfoModel?.openTime}'),
                        Text("${StringManager.closeTime.tr()}: " +
                            '${storeInfoModel?.closeTime}'),
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
                        onPressed: () {
                          context.read<EditStoreBloc>().add(
                              UpdateEditStoreEvent(
                                  id: storeInfoModel!.id!,
                                  token: context.read<AuthBloc>().token!,
                                  name_ar: "name_ar",
                                  name_en: "name_en",
                                  openTime: openStoreTime ??
                                      storeInfoModel!.openTime.toString(),
                                  closeTime: closeStoreTime ??
                                      storeInfoModel!.closeTime.toString()));

                          //TODO get time and names, add snackbar and pop
                          gShowSuccessSnackBar(
                              context: context,
                              message: StringManager.storeDetailsUpdated.tr());
                          Navigator.pop(context);
                        },
                        text: StringManager.update.tr())),
              ),
            ],
          );
        },
      ),
    );
  }
}
