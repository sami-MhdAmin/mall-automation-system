part of 'favorite_bloc.dart';

@immutable
abstract class FavoriteEvent {}

class FavoriteGetFavoriteProductsEvent extends FavoriteEvent {
  final String token;

  FavoriteGetFavoriteProductsEvent({required this.token});
}
