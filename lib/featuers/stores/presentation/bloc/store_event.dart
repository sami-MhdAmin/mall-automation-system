part of 'store_bloc.dart';

@immutable
abstract class StoreEvent {}

class StoreGetStoresEvent extends StoreEvent {
  final String categoryName;

  StoreGetStoresEvent({required this.categoryName});
}

class StoreSearchForStoreEvent extends StoreEvent {
  final String searchInput;

  StoreSearchForStoreEvent({required this.searchInput});
}

class StoreGetOneStoreInfo extends StoreEvent {
  final int storeId;

  StoreGetOneStoreInfo({required this.storeId});
}
