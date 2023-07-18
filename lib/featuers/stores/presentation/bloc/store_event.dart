part of 'store_bloc.dart';

@immutable
abstract class StoreEvent {}

class StoreGetStoresEvent extends StoreEvent {
  final int categoryId;

  StoreGetStoresEvent({required this.categoryId});
}

class StoreSearchForStoreEvent extends StoreEvent {
  final String searchInput;

  StoreSearchForStoreEvent({required this.searchInput});
}
