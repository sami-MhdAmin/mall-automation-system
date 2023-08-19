import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:jessy_mall/core/resource/string_manager.dart';
import 'package:jessy_mall/featuers/investment_options/models/investment_store_model.dart';
import 'package:jessy_mall/featuers/investment_options/presentation/bloc/invest_option_bloc/invest_option_bloc.dart';
import 'package:jessy_mall/featuers/investment_options/presentation/page/invest_store_ui.dart';
import 'package:jessy_mall/featuers/investment_options/presentation/page/invest_store_page.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../../Auth/presintation/bloc/auth_bloc.dart';

class Listing {
  final String photoUrl;
  final String floor;
  final String space;
  final String type;
  final String price;

  Listing({
    required this.photoUrl,
    required this.floor,
    required this.space,
    required this.type,
    required this.price,
  });
}

class InvestmentStoreUI extends StatelessWidget {
  /* final List<Listing> listings = [
    Listing(
      photoUrl:
          'https://image.cnbcfm.com/api/v1/image/103448059-GettyImages-492843021.jpg?v=1675861201&w=740&h=416&ffmt=webp&vtcrop=y',
      floor: '3rd floor',
      space: '120 sq. ft.',
      type: 'Snack',
      price: '\$500/year',
    ),
    Listing(
      photoUrl:
          'https://image.cnbcfm.com/api/v1/image/103448059-GettyImages-492843021.jpg?v=1675861201&w=740&h=416&ffmt=webp&vtcrop=y',
      floor: '1st floor',
      space: '80 sq. ft.',
      type: 'Caffe',
      price: '\$400/year',
    ),
    // Add more listings as needed
  ];*/

  List<InvestStoreDataModel>? investStoreModel;

  InvestmentStoreUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I.get<InvestOptionBloc>(),
      child: Scaffold(
        body: BlocConsumer<InvestOptionBloc, InvestOptionState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is InvestStoreOptionFailed) {
              //TODO: dialog with alert YAMANAAAAAAAA
            }
            if (state is InvestStoreOptionSuccessd) {
              // print(state.profileModel.profileDataModel?.email);
              investStoreModel = state.investStoreModel.allStores;
            }
          },
          builder: (context, state) {
            if (state is InvestOptionInitial) {
              context.read<InvestOptionBloc>().add(GetInvestStoreOption(
                  token: context.read<AuthBloc>().token ?? ''));
            }
            return ListView.builder(
              itemCount: investStoreModel?.length ?? 0,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(30.w),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => InvestStorePage(
                                      investStoreDataModel:
                                          investStoreModel![index],
                                    )));
                      },
                      child:
                          CardStore(listings: investStoreModel!, index: index)),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class CardStore extends StatelessWidget {
  const CardStore({super.key, required this.listings, required this.index});

  final List<InvestStoreDataModel> listings;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0.r),
              topRight: Radius.circular(30.0.r),
            ),
            child: Image.network(
              'https://image.cnbcfm.com/api/v1/image/103448059-GettyImages-492843021.jpg?v=1675861201&w=740&h=416&ffmt=webp&vtcrop=y',
              height: 600.0.h,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  listings[index].type ?? "",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 55.0.sp,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '${StringManager.floor.tr()} ${listings[index].floor}',
                  style: TextStyle(fontSize: 48.0.r),
                ),
                const SizedBox(height: 8.0),
                Text(
                  '${StringManager.storeSpace.tr()} ${listings[index].store_space}',
                  style: TextStyle(fontSize: 48.0.sp),
                ),
                const SizedBox(height: 16.0),
                Text(
                  "${listings[index].price}\$",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 55.0.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
