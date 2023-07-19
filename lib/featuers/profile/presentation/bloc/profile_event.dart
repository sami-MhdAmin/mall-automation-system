part of 'profile_bloc.dart';

@immutable
abstract class ProfileEvent {}

class ProfileGetMyOrdersEvent extends ProfileEvent {}

class ProfileGetMyShippingAddressesEvent extends ProfileEvent {}

class ProfileInvestStoreOrStandEvent extends ProfileEvent {}

class ProfileSettingEvent extends ProfileEvent {}

class ProfileManageMyStores extends ProfileEvent {}
