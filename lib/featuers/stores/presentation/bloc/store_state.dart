part of 'store_bloc.dart';

@immutable
abstract class StoreState {}

class StoreInitial extends StoreState {}

class StoreLoading extends StoreState {}

class StoreFailed extends StoreState {
  StoreFailed({required this.faliuer});
  final Failure faliuer;
}

class StoreLoadedSuccess extends StoreState {
  final List<StoresModel> storesModel;

  StoreLoadedSuccess({required this.storesModel});
}

class StoreSearchLoadedSuccess extends StoreState {
  final List<StoresModel> storesModel;

  StoreSearchLoadedSuccess({required this.storesModel});
}
