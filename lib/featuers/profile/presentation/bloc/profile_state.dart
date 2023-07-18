
//TODO: somehting todo with logout
// class ProfileLogout

//TODO might be 2 states for every button and event 

part of 'profile_bloc.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ProfileLoading extends ProfileState {}

class ProfileFailed extends ProfileState {
  final Failure faliuer;
  ProfileFailed({required this.faliuer});
}

class ProfileLoaded extends ProfileState {
  final ProfileModel profileModel;

  ProfileLoaded({required this.profileModel});
}