part of 'edit_store_bloc.dart';

@immutable
abstract class EditStoreEvent {}

class GetEditStoreEvent extends EditStoreEvent {
  final String token;
  GetEditStoreEvent({required this.token});
}

class UpdateEditStoreEvent extends EditStoreEvent {
  final File image;
  final String name_ar;
  final String name_en;
  final String openTime;
  final String closeTime;

  UpdateEditStoreEvent(
      this.image, this.name_ar, this.name_en, this.openTime, this.closeTime);
}
