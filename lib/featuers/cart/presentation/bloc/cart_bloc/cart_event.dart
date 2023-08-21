part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

class CartGetAllOrderEvent extends CartEvent {
  final String token;
  CartGetAllOrderEvent({
    required this.token,
  });
}
