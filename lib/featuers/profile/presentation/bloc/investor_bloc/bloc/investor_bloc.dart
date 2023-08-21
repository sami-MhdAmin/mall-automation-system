

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jessy_mall/featuers/profile/repository/profile_repository.dart';

import '../../../../../../core/errors/base_error.dart';
import '../../../../models/investor_model.dart';

part 'investor_event.dart';
part 'investor_state.dart';

class InvestorBloc extends Bloc<InvestorEvent, InvestorState> {
  final ProfileRepository _profileRepository;
  InvestorBloc(this._profileRepository) : super(InvestorInitial()) {
    on<InvestorRequestProductFromMyStore>((event, emit) async {
       emit(InvestorGetProductLoading());
      final successOrFailuer =
          await _profileRepository.getMyStoreProduct(event.token);
      successOrFailuer.fold((error) {
        emit(InvestorGetProductFailuer(failure: error));
      }, (product) {
        emit(InvestorGetProductSuccess(
            investorProductModel: product));
      });
    });
  }
}
