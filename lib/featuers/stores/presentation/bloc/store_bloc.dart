import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/errors/base_error.dart';
import '../../models/stores_model.dart';
import '../../repository/store_repository.dart';
part 'store_event.dart';
part 'store_state.dart';

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  final StoreRepository _storeRepository;
  StoreBloc(this._storeRepository) : super(StoreInitial()) {
    on<StoreGetStoresEvent>((event, emit) async {
      // TODO: implement event handler
    });

    on<StoreSearchForStoreEvent>((event, emit) async{} );
  }
}
