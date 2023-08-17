part of 'edit_store_bloc.dart';

@immutable
abstract class EditStoreEvent {}

class GetEditStoreEvent extends EditStoreEvent {
  final String token;
  GetEditStoreEvent({required this.token});
}