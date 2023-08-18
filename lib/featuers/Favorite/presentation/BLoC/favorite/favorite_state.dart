part of 'favorite_bloc.dart';

@immutable
abstract class FavoriteState {}

class FavoriteInitial extends FavoriteState {}

class FavoriteLoading extends FavoriteState {}

class FavoriteGetFavoriteProductFailed extends FavoriteState {
  final Failure faliuer;
  FavoriteGetFavoriteProductFailed({required this.faliuer});
}

class FavoriteGetFavoriteProductSuccess extends FavoriteState {
  final FavoriteModel favoriteModel;

  FavoriteGetFavoriteProductSuccess({required this.favoriteModel});
}
